#include <declare_set.hpp>
#include <syntax_tree.hpp>
#include <rec_file.hpp>

void handle_string(std::ostream& , std::ostream&,  syntax_tree::node*);
size_t helper_handle_token(struct_tokens& , record_file& , size_t , std::set<std::string> &);

void handle_tokens(struct_tokens& tokens, std::ofstream& file) {
 
    record_file stream;
    std::set<std::string> value;
    helper_handle_token(tokens, stream, 0, value);
    stream.record(file);
}

size_t helper_handle_token(struct_tokens& tokens, record_file& stream, size_t i, std::set<std::string> &value)
{
    if (i >= tokens.size()) return i;
    size_t j = i + 1;
    if (tokens[i][0] == "print") {
        struct_token handle(tokens[i].begin() + 1, tokens[i].end());

        /* LOG */ for (const auto& val: handle)  
        /* LOG */ std::cerr << "main.cpp handle_tokens (handle print): " << val << "\n";

        syntax_tree tree{handle};
        handle_string(stream._start_seg, stream.text_label_seg, tree._root);
        
        stream._start_seg << "pop r15\ncall _print \n";
    }
    else if (tokens[i][0] == "}") return i + 1;
    else if (tokens[i][0] == "while" || tokens[i][0] == "if") {
        struct_token handle(tokens[i].begin() + 1, tokens[i].end() - 1);
        syntax_tree tree{handle};
        size_t condition = stream.amount_condition++; 
        if (tokens[i][0] == "while")
            stream._start_seg << "condition_" << condition << ":\n";
        handle_string(stream._start_seg, stream.text_label_seg, tree._root);
        stream._start_seg << "cmp rax, 1\njnge end_condition_" << condition << "\n";
        j = helper_handle_token(tokens, stream, i + 1, value);
        if (tokens[i][0] == "while") {
            stream._start_seg << "jmp condition_" << condition << "\n";
        }
        stream._start_seg << "end_condition_" << condition << ":\n"; 
    } 
    else if (tokens[i].size() >= 2 && tokens[i][1] == "=") {
        if (auto it = value.find(tokens[i][0]); it == value.end()) {
            value.insert(tokens[i][0]);
            stream.data_seg << tokens[i][0] << " dq 0\n";
        }
        syntax_tree tree{tokens[i]};
        handle_string(stream._start_seg, stream.text_label_seg, tree._root);
    }
    return helper_handle_token(tokens, stream, j, value);
}



int main(int args, char** argv) {
    /* strem i/o   */
    std::ifstream file(argv[1]);
    std::ofstream o_file(argv[2]);


    vector_str v_str;

    /* read file */
    while (!file.eof()) {
        std::string str;
        std::getline(file, str);
        if (str != "" && str != " ") v_str.push_back(str);  
    }
    struct_tokens tokens(v_str.size(), vector_str{});

    /* tokenization */
    for (size_t i {0}; i < v_str.size(); ++i) {
        tokens[i] = split_token_str(v_str[i]);
    }

    /* LOG */
    for (auto& token: tokens) {
        for (auto& str: token) {
            std::cerr << "main.cpp main (token):";
            std::cerr << str << std::endl;
        }
    }
    /* LOG */ 

    handle_tokens(tokens, o_file);

    return 0;
}
