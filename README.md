# Libft - @42 Málaga

## Introduction
`Libft` is a C library regrouping commonly used functions, aimed at 42 students. It includes utility functions, string manipulations, memory operations, linked lists, and more. Additionally, it has an implementation of `ft_printf` and `get_next_line`.

## Contents
```
- lib/
    - ft_printf/
    - get_next_line/
- include/
    - libft.h
- src/
    - Various .c files (Refer below for details)
```

## Dependencies

- Standard C Libraries
- gcc compiler
- make

## Features

- String manipulation functions like `ft_strjoin`, `ft_strlen` etc.
- Memory operations like `ft_memcpy`, `ft_memset` etc.
- Utility functions like `ft_atoi`, `ft_bzero` etc.
- Linked list operations like `ft_lstnew`, `ft_lstadd` etc.
- `ft_printf` function for output
- `get_next_line` for reading lines from a file descriptor

## Makefile

### Targets

- `all`: Compiles the library
- `clean`: Removes object files
- `fclean`: Removes object files and the library
- `re`: Recompiles the library
- `bonus`: Compiles the library along with linked list functions 

## How to Use

1. Clone the repository
2. Run `make` to compile the library
3. Include the header (`#include "libft.h"`) in your C file
4. Compile your project with `libft.a`

### Example
```bash
gcc -o your_program your_source_file.c -I./path_to_libft/include -L./path_to_libft -lft
```
