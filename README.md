# Haskell Program Crashing on Non-Numeric Input

This repository contains a Haskell program that demonstrates a common error:  unhandled exceptions when parsing user input. The program is intended to read a list of numbers, sort them, and print the sorted list and its sum. However, if the user enters non-numeric input, the `read` function throws an exception, causing the program to crash.

The `bug.hs` file contains the buggy code. The `bugSolution.hs` file provides a corrected version that handles potential errors gracefully.
