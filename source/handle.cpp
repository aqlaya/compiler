#include "declare_set.hpp"
#include "syntax_tree.hpp"

static size_t amount_compare = 0;

void compare(std::ostream& start, std::ostream&  text, const std::string& op ) {
    start << "cmp rax, rdx\n";
    start << "mov rax, 0\n";
    start << op  << " compare_" << amount_compare << "\n";
    start << "L" << amount_compare << ":\n";
    text << "compare_" << amount_compare << ":\n";
    text << "mov rax, 1\n";
    text << "jmp L" << amount_compare << "\n";
    amount_compare++;

}

void idiv(std::ostream& stream) {
    stream << "mov r8, rdx\n";
    stream << "mov rdx, 0\n";
    stream << "cqo\n";
    stream << "idiv r8\n";
}


void push_value(std::ostream& stream, const std::string& value) {
    if (std::isdigit(value[0])) 
        stream << std::string{"push " + value  + "\n"};
    else {
        stream << std::string{"push qword[" + value + "]" + "\n"}; 
    }
}

void push_reg(std::ostream& stream, bool isLeft) {
    if (isLeft) 
        stream << std::string{"push rax\n"};
    else   
        stream << std::string{"push rdx\n"};
}

void pop_reg(std::ostream& stream, bool isLeft) {
    if (isLeft)
        stream << std::string{"pop rax\n"};
    else
        stream << std::string{"pop rdx\n"};
}

void mov_reg(std::ostream& stream, const std::string& value,  bool isLeft) {
    if (isLeft) 
        stream << std::string{"mov [" +  value + "], rax\n"};
    else    
        stream << std::string{"mov [" + value + "], rdx\n"};
}

void operation(std::ostream& stream, const std::string& name_op) {
    stream << std::string{name_op + " rax, rdx\n"};
}


void un_neg_op(std::ostream& stream) {
    stream << std::string{"neg rax\n"};
}


void handle_string(std::ostream& stream, std::ostream& second, syntax_tree::node* n) {
    // rax, rdx
    if (n == nullptr)  return;
    if (n->left == nullptr && n->right == nullptr) {
        push_value(stream, n->value);
        return;
    }

    handle_string(stream, second,   n->right);
    handle_string(stream, second, n->left);

    pop_reg(stream, true);                  // left register (rax)

    if (n->left != nullptr) 
        pop_reg(stream, false);             // right register (rdx)
    
    if (n->value == "=") {
        mov_reg(stream, (n->left)->value, false);
    }
    else {
        if (n->value == "+" && n->left != nullptr) 
            operation(stream, "add");
        else if (n->value == "-" && n->left == nullptr) 
            un_neg_op(stream);
        else if (n->value == "-") 
            operation(stream, "sub"); 
        else if (n->value == "*") 
            operation(stream, "imul"); 
        else if (n->value == "|") 
            operation(stream, "or"); 
        else if (n->value == "&") 
            operation(stream, "and"); 
        else if (n->value == "/") 
            idiv(stream); 
        else if (n->value == "%")  { 
            idiv(stream); 
            stream << "mov rax, rdx\n";
        }
        else if (n->value == "==") 
            compare(stream, second, "je");
        else if (n->value == ">=") 
            compare(stream, second, "jge"); 
        else if (n->value == ">") 
            compare(stream, second, "jg");
        else if ( n->value == "<")
            compare(stream, second, "jl");
        else if ( n->value == "<=") 
            compare(stream, second, "jle");
        else if (n->value == "!=")
            compare(stream, second, "jne");
        push_reg(stream, true);
    }
}



