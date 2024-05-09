#include "declare_set.hpp"

struct record_file {
    std::stringstream data_seg;
    std::stringstream text_label_seg;
    std::stringstream  _start_seg;
    record_file();
    
    void record(std::ofstream& file);

public:
    size_t amount_condition {0};
    size_t amount_cycle     {0};
};

