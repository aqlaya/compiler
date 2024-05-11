#pragma once

#include <iostream>
#include <sstream>
#include <set>
#include <vector>
#include <map>
#include <fstream>
#include <string>
#include <tuple>
#include <algorithm>
#include <exception>
#include <type_traits>

using struct_token = std::vector<std::string>;
/* different in semantic */
using vector_str = struct_token;

/* keep all string file.txt */
using struct_tokens = std::vector<struct_token>;


/* keep couple index of operator to string */
using vector_pair = std::vector<std::pair<size_t, size_t>>;


/* first - index (without parentheses), second - amount parentheses, third - isLeft */
using tuple = std::tuple<size_t, size_t, bool>;

/* explanation_set.cpp */

extern std::set<std::string> 
    parentheses,  
    unary_op,
    instruction;
extern std::map< std::string, size_t > binary_op;
bool is_unary(std::string str);
bool is_operator(std::string str);
bool is_parentheses(std::string str);
/* */

struct_token split_token_str(std::string& str);





