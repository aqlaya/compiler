cmake_minimum_required(VERSION 3.2)
project(compiler)

set(dir_header include)

set( library_shared
        handle
        syntax_tree
        tokenization
        rec_file
)

add_executable(compiler main.cpp declare_set )

foreach(value IN LISTS library_shared) 
    add_library(${value} STATIC ${value}.cpp declare_set.cpp)
    target_include_directories(${value} PUBLIC ${dir_header})
    target_compile_options(${value} PUBLIC "-Wall" PUBLIC "-Wextra" PUBLIC "-std=c++20")
    target_link_libraries(compiler PRIVATE ${value})
endforeach()





