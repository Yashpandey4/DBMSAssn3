# DBMS Assignment 3 Checker Scripts

## Table of Contents

1. [Copy required files to assignment directory](#copy)
2. [Checker Scripts](#check)
    - [copy_to_all.sh](#copysh)
    - [make_all.sh](#make)
    - [run_all.sh](#run)
    - [Evaluation](#eval)
3. [Final Notes and Miscellaneous](#misc)
4. [Tl;DR](#tldr)

## Required Files for Submission <a name="copy"></a>

The following files should be present inside your submission zip. Don't put these files in another subdirectory inside your `entry_numbers` directory.
1. Makefile
2. Assignment `*.cpp` and `*.h` files

## Checker Scripts <a name="check"></a>

### copy_to_all.sh <a name="copysh"></a>

This script copies the following files (provided in the original assignment repo [here](https://github.com/ankit-1517/dbms_rTree)):
- buffer_manager.cpp
- constants.h  
- file_manager.cpp
- buffer_manager.h
- errors.h
- file_manager.h

### make_all.sh <a name="make"></a>

Runs the Makefile from the toplevel of your submission folder after copying the requisite files in the directory.  
**Note** - please test your `Makefile` well with the `make` command and confirm that `rtee` file is being generated before submission.

### run_all.sh <a name="check"></a>

This script executes the rtree file with the following format -  
```./rtree query.txt maxCap dimensionality output.txt```  
Things to note here -  

- `query.txt` represents the **absolute path** of the query file and NOT the relative path. The query files are stored at a central location and the same will be used to run your code.
- Please ensure you dont make any assumptions about the path of the query or the output files in your code and always work with absolute paths.
- If the file doesn't execute within 10 minutes, execution will be stopped for that Test Case.

### Evaluation

An eval script will checks output files with the correct output files and assigns scores based on correct query outputs.

- If your output returns uniformly TRUE or uniformly FALSE values, 0 will be given (the correct answer files will, under no circumstances, contain uniformly TRUE/FALSE outputs)
- In case your code login "purposefully" randomises TRUE or FALSE outputs, 0 will be given after inspection of the code.

## Final Notes and Miscellaneous <a name="misc"></a>

- Your rtee file will be tested using 10 test cases whose parameters are already available in `run_all.sh`
- `maxCap` is between 5 and 100 and `dimensionality` is between 2 and 10. The exact parameters used for testing are already provided in `run_all.sh`
- Run the script files by `chmod 777 script.sh` followed by `./script.sh`
- Leave a single line gap between subsequent statements in the output files generated
- The testcases will be executed on Ubuntu 18.04 (x64 machine)
- Failure in adhering to the above submission guidelines would result in a penalty, the magnitude of which will be decided later
- Any cases of plagiarism (included "borrowing" assignment from AGP students or previous years) will be dealt with as per institute policy.

## TL;DR Takeaways <a name="tldr"></a>

- Ensure running `make` in assignment submission directory generates `rtee` after copying the requisite files.
- Ensure that the paths you send as argument to `./rtree query.txt maxCap dimensionality output.txt` are **absolute paths**
- Purposefully Randomising or Uniformly Outputting TRUE/FALSE values in output files will be awarded with a 0.
