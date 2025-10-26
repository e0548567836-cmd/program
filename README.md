My Assembler Project
Two-Pass Assembler for a Simple Computer System
Overview

This project implements a two-pass assembler for a simplified computer architecture.
The assembler reads assembly source files (.as) and converts them into machine code through three main phases:

Pre-Assembly – Handles macros and performs initial validation

First Pass – Builds the symbol table and assigns memory addresses

Second Pass – Generates the final machine code and output files

🧩 Pre-Assembly Stage

Before the main assembly, the program expands macros and performs basic error checking.

Main Functions

Macro Detection: Identifies macro definitions (between macro and endmacro)

Macro Expansion: Replaces macro calls with their full code

File Generation: Produces a new expanded source file (.am)

Error Checking

Ensures every macro is properly closed with endmacro

Prevents redefinition of existing macros

Verifies that macro names don’t conflict with reserved assembly keywords

Checks macro syntax validity

Common Errors Detected

Missing endmacro

Reserved word used as macro name

Duplicate macro definitions

Invalid macro format

Output:
An expanded .am file with all macros replaced by their contents.

🔍 First Pass

The first pass scans the expanded assembly file to build the symbol table and track memory allocation.

Main Tasks

Identify and store labels with their corresponding addresses

Maintain instruction counter (IC) and data counter (DC)

Validate syntax and detect definition issues

Errors Detected

Undefined or duplicate labels

Invalid syntax or addressing

Memory allocation errors

Output

Symbol Table with label-to-address mapping

Memory Information for the second pass

⚙️ Second Pass

The second pass uses the symbol table to translate assembly instructions into binary machine code.

Main Functions

Convert assembly commands into binary

Replace label references with their actual addresses

Process .data and .string declarations

Handle internal, external, and entry symbols

Error Checking

Invalid addressing modes or operands

Unresolved label references

Incorrect instruction formats

Output Files

.ob – Object File
Contains the final machine code (instructions + data)

.ext – External File
Lists external symbols and their reference locations

.ent – Entry File
Lists program entry points and their addresses

Error Report
Detailed error messages with line numbers for easy debugging

🧠 Key Features

Accurate Error Reporting: Clear explanations with file and line references

Efficient Memory Management: 256 words of 10 bits each

Modular Design: Each phase is implemented independently

Extensible Codebase: Easy to maintain and enhance

💻 Technical Details

Language: C

Memory Size: 256 words (10 bits each)

Addressing: Unified instruction and data space

Supported Files: Input .as, output .am, .ob, .ext, .ent

Build System: Makefile

Platform: Linux

Compiler: GCC (standard C libraries only)

🧪 Testing

The project includes test programs covering:

Macro expansion and syntax edge cases

Label resolution and address validation

Error handling for invalid input

Memory limit conditions

Correctness of output file formats
