#include "rec_file.hpp"

record_file::record_file(): data_seg{}, text_label_seg{}, _start_seg{} 
{
    data_seg << "section .data\n";
    text_label_seg << "section .text\n";
    _start_seg << "_start:\n";
}



void record_file::record(std::ofstream& file) {
    _start_seg << "mov rax, 60\nsyscall\n";
    file << "global _start\n";
    file << "extern _print\n";
    file << data_seg.rdbuf();
    file << "\n";
    file << text_label_seg.rdbuf();
    file << "\n";
    file << _start_seg.rdbuf();
    file << "\n";
    
}


