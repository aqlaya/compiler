#include "declare_set.hpp"

std::set<std::string> 
    parentheses = {"(", ")"},
    unary_op    = {"~", "+", "-"},
    instruction = {"if", "while", "print", "{", "}"};


std::map<std::string, size_t>
    binary_op  {
        {"*", 0}, {"/", 0}, {"&", 0}, {"%", 0},
        {"+", 1}, {"-", 1}, {"|", 1},
        {"<", 2}, {">", 2}, {"==", 2}, {">=", 2}, {"<=", 2}, {"!=", 2},
        {"=", 3},
};

bool is_unary(std::string str) {
    return unary_op.count(str);
}

bool is_parentheses(std::string str) {
    return parentheses.count(str);
}

bool is_operator(std::string str) {
    return is_unary(str) || binary_op.count(str) || is_parentheses(str) || instruction.count(str);
}
