#pragma once

#include "declare_set.hpp"

struct syntax_tree {
    struct node {
        node* left;
        node* right;
        node* parent;
        std::string value;
    };
    node* _root;
    syntax_tree(struct_token token): _root{nullptr} {
        std::vector<tuple> v;
        v = define_priority(token);
        if (!v.empty()) {
            size_t in = std::get<0>(v[0]);

            _root = new node({nullptr, nullptr, nullptr, token[in]});
            
            /* LOG */  std::cerr << "syntax_tree.hpp syntax_tree::syntax_tree  (entry add_node_tree):";
            /* LOG */  std::cerr << token[in] << std::endl;
            
            add_node_in_tree(token, v, _root, in + 1, token.size() - 1, false);
            if (std::get<2>(v[0]))
                add_node_in_tree(token, v, _root, 0, in - 1, true);
        }
        else { 
            _root = new node({nullptr, nullptr, nullptr, token[0]});
        }
    }
    ~syntax_tree();
private:

    void add_node_in_tree(struct_token& token, std::vector<tuple>& prior, 
                                    syntax_tree::node* prev, int i, int j, bool isLeft);

    std::vector<tuple> define_priority(struct_token& token);

    void without_parentheses(struct_token& token);

    void remove_tree(syntax_tree::node* n);
};

/* compare for syntax_tree.cpp */
template <size_t N, bool isLess>
struct Com {
    bool  operator()(tuple a, tuple  b) {
        if (isLess) return std::get<N>(a) < std::get<N>(b);
        return std::get<N>(a) > std::get<N>(b);
    }
};



