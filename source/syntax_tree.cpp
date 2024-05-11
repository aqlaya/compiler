#include <syntax_tree.hpp>


std::vector< tuple >
syntax_tree::define_priority(struct_token& token) {
    std::vector<tuple> prior;
    std::map<size_t, size_t> count_p;
    bool prev_op = true;
    size_t level_p {}, current_count_p {};


    for (size_t i {}; i < token.size(); ++i) {
        auto str = std::string{token[i]};
        if (is_operator(str) && !(is_parentheses(str))) {
            if (prev_op) 
                prior.push_back({i - current_count_p, level_p, 0});
            else
                prior.push_back({i - current_count_p, level_p, 1});
            prev_op = true;
            if (count_p.count(level_p) ) 
                count_p[level_p] += 1;
            else 
                count_p[level_p] = 1; 
        }
        else if (is_parentheses(str)) {
            if   (str == "(")   
                        ++level_p;
            else 
                        --level_p;
            current_count_p++;
       }
        else prev_op = false;
    }
    
    if (!prior.empty()) std::reverse(prior.begin(), prior.end());



    std::sort(prior.begin(), prior.end(), Com<1, true>{});
    /* operator in parentheses move to end */


    /* Log */
    for (auto & value: prior) {
        std::cerr << "syntax_tree.cpp define_priority (unhandle prior <index, parentheses, isBin>):";
        std::cerr << std::get<0>(value)  << " " << std::get<1>(value)  << " " << std::get<2>(value) << '\n';
    }
    /* Log */ 

    std::map<size_t, size_t> amount_unary_op; 
    for (auto& value: prior) {
        if (std::get<2>(value) == 0) {
            if (amount_unary_op.count(std::get<1>(value))) {
                amount_unary_op[std::get<1>(value)] += 1;
            }
            else
               amount_unary_op[std::get<1>(value)] = 1;
        }
    }



    /* Log */
    for (auto& value: amount_unary_op) {
        std::cerr << "syntax_tree.cpp define_priority (amount unary operator):";
        std::cerr << value.second << " " << value.first << std::endl;
    }
    /* Log  */

   
    size_t b {};
    for (auto& value: count_p) {
        std::sort(prior.begin() + b, prior.begin() + b + value.second, Com<2, false>{});
        b += value.second;
    }
    /* operator that is unary move to end  */

    without_parentheses(token);

    auto great_lam_compare {
        [=](tuple a, tuple b) {
            return binary_op[token[std::get<0>(a)]] >
                binary_op[token[std::get<0>(b)]];
        }
    };   
    /* prirority binary operator */

    b = 0;
    for (auto& value:  count_p) {
        size_t v = std::get<0>(value);
        if (amount_unary_op.count( v  ) ) {
            std::sort(prior.begin() + b, prior.begin() + b + value.second - amount_unary_op[v], great_lam_compare);
        }
        else 
            std::sort(prior.begin() + b, prior.begin() + b + value.second, great_lam_compare);
        b += value.second;
    }

     
            
    /* Log */
        for (auto& value: prior)  {
            std::cerr << "syntax_tree.cpp define_priority (output prior <index, parentheses, isBin>):";
            std::cerr << std::get<0>(value) << " " << std::get<1>(value) << " "
                      << static_cast<int>(std::get<2>(value)) << '\n';
        }
    /* Log */

    return prior;
}

void syntax_tree::without_parentheses(struct_token& token) {
    size_t i {};
    while (i < token.size()) { 
        if (parentheses.count(token[i])) {
            token.erase(token.begin() + i);
        }
        else 
            i++;
    }
}


void syntax_tree::add_node_in_tree(struct_token& token, std::vector<tuple>& prior,
                        syntax_tree::node* prev, int i, int j, bool isLeft) {

    if (i == j) {
        syntax_tree::node* new_node = new syntax_tree::node({nullptr, nullptr, prev, token[i]});

        /* LOG */ std::cerr << "syntax_tree.cpp add_node_in_tree (output node <value, index, isLeft>):";
        /* LOG */ std::cerr << token[i]  << " " << i << " " << isLeft << std::endl;

        if (isLeft) 
            prev->left = new_node;
        else 
            prev->right = new_node;
        return;
    }

    size_t index {};
    for (size_t k {0}; k <= prior.size(); ++k) {
        if (i <= std::get<0> (prior[k]) && j >= std::get<0>(prior[k]) ) {
            index = k;
            break;
        }
    }
    syntax_tree::node* new_node = new syntax_tree::node( {nullptr, nullptr, prev, token[std::get<0>(prior[index])] } );

    /* LOG */ std::cerr << "syntax_tree.cpp add_node_in_tree (output node <value, index, isLeft>):";
    /* LOG */ std::cerr << token[std::get<0>(prior[index])] << " " << std::get<0>(prior[index]) << " " << isLeft << std::endl;


    if (isLeft)
        prev->left = new_node;
    else
        prev->right = new_node;

    add_node_in_tree(token, prior, new_node, std::get<0>(prior[index]) + 1, j, false);

    if (std::get<2>(prior[index]))
        add_node_in_tree(token, prior, new_node, i, std::get<0>(prior[index]) - 1, true);
}

syntax_tree::~syntax_tree() {
    remove_tree(_root);
    delete _root;
}

void syntax_tree::remove_tree(syntax_tree::node* n)
{
    if (n == nullptr) return;

    /* LOG */ std::cerr << "syntax_tree.cpp remove_tree (Destructor output):";
    /* LOG */ std::cerr << n->value << std::endl;

    remove_tree(n->left);
    remove_tree(n->right);
    

    delete n->left;
    delete n->right;
}
