#include "declare_set.hpp"

struct_token split_token_str(std::string& str) {

    /* find index of operator */
    vector_pair op_pair {};
    for (int i  = str.size() - 1; i >= 0; --i) {
        for (int j {i - 5}; j <= i; ++j)  {
            if (j < 0) continue;
            if (op_pair.size() == 0 && is_operator(str.substr(j, i - j + 1))) {
                op_pair.push_back({j, i});
                break;
            }
            else if (is_operator(str.substr(j, i - j + 1)) && op_pair[op_pair.size() - 1].first > j) 
            {
                op_pair.push_back({j, i});
                break;
            }
        }
    }

    std::reverse(op_pair.begin(), op_pair.end());

    /* LOG */ for (const auto& value: op_pair) {
    /* LOG */       std::cerr << "tokenization.cpp split_token_str (find operator):";
    /* LOG */       std::cerr << str.substr(std::get<0>(value), std::get<1>(value) - std::get<0>(value) + 1) << " ";
    /* LOG */       std::cerr << std::get<1>(value)  << " " <<  std::get<0>(value) << std::endl;
    /* LOG */}


    str += " ";
    struct_token token;

    size_t k {};
    size_t i {}, p {};
    bool isToken = 0;
    while (i < str.size()) {
        if (!op_pair.empty() && op_pair[p].first == i) {
            if (isToken) token.push_back(str.substr(k , i - k));
            isToken = false;
            token.push_back(str.substr(op_pair[p].first, op_pair[p].second - op_pair[p].first + 1));
            i = op_pair[p].second + 1;
            k = i;
            p++;
        } 
        else if (str[i] == ' ' && isToken) {
            token.push_back(str.substr(k , i - k ));
            isToken = false;
            k = ++i; 
        }
        else if (str[i] != ' ') {
            isToken = true;
            i++;
        }
        else 
            k = ++i; 
    }

    /* LOG */ for (const auto& value: token) {
    /* LOG */   std::cerr << "tokenization.cpp split_token_str (output token and string length):";
    /* LOG */   std::cerr << value  << " " << value.size() << '\n';
    /* LOG */ }

    return token;
}
