# Lesson1-CommandLine(Linux)
A command-line interpreter or command-line processor uses a command-line interface (CLI) to receive commands from a user in the form of lines of text.
Command line is a line of text like `pwd`, `ls` which provide a certain meaning.  
A shell will interpret the command and response.  

## Shell 
The shell is the thing that runs on the other end of the pipes or the communications channel that is connected to the terminal.  
The shell is responsible for receiving your keystrokes, understanding what your keystrokes mean, performing some work, and sending text out to be displayed.  

## Opening a command-line application 
Application : 
- Windows : WSL(Windows Subsystem for Linux)
- MacOS or Linux : Terminal 

## Basic concept
### Prompt 
Prompt is a character which give you a hint that the command start here. Mostly, you will get somthing like 
```
$
```
or 
```
>
```

### Start from something simple 
```shell
$ whoami
```
After pressing <enter>, the app will gave a response like: 
```shell
$ whoami
beethoven
```

## Basic command line
1. whoami, print effective user name. 
    ```shell
    > whoami 
    beethoven   # User name 
    ```

2. man, format and display the on-line manual page.  
    ```shell
    > man whoami 
    WHOAMI(1)           General Commands Manual 
    NAME 
        whoami - display effective user id.

    SYNOPOSIS
        whoami

    DESCRIPTION
        ...(there are more)
    ```
3. See options in appendix A

3. clear, clear the terminal screen.  
    options: 
    ```shell
    > clear       # Clear the terminal screen. 
    > clear -x    # Do not clear the scroll history. 
    ```
4. pwd, print the current working directory. 
    ```shell
    > pwd
    /Users/beethoven/Documents/test
    ```

5. ls, list the files under current working directory.
    ```shell
    > ls 
    README.md   init.lua    slides 
    > ls -a     # list everything includeing implicit files.
    .   ..  .local  README.md   init.lua    slides 
    ```
    `ls` can alse list other directory's file by adding destination after `ls`.  
    ```shell 
    > ls 
    README.md   init.lua    slides 
    > ls slides 
    slides1.pdf    slides2.pdf
    ```

6. cd, change the current working directory.
    `.` means currrent directory while `..` represents the parent directory.  
    ```shell
    > pwd
    /Users/beethoven/Documents/test
    > cd ..     # Go to parent directory.
    > pwd 
    /Users/beethoven/Documents
    > ls -a     # List everything including implicit files.
    .   ..  .local  test    slides  
    > cd test   # Go to 'test' directory.
    > pwd 
    /Users/beethoven/Documents/test
    ```
    Use `cd [dir]/[dir]` can move more level a time.  

7. mkdir, create a new directory. 
    Mostly, a directory will be bold when displaying and a file won't.  
    ```shell
    > ls    # List
    test    slides 
    > mkdir code 
    > ls 
    test    slides    code  
    ```
8. touch, create a file 
    ```shell
    > ls    # List 
    test    slides   code
    > touch main.cpp 
    > ls
    test    slides   code    main.cpp
    ```
9. rm, delete 
    ```shell
    > ls 
    test    slides    code    main.cpp 
    > rm main.cpp 
    > ls 
    test    slides    code 
    ```
    options: 
    ```shell 
    > rm [file]     # Remove a file 
    > rm -r [dir]   # Remove a directory recursively so whatever is under the directory will be delete
    > rm -i [file]  # Remove with confirmation 
    > rm -f [file]  # Force remove 
    ```
10. cp, copy 
    ```shell
    > cp [file] [newname]         # Duplicate the file with the newname.  
    > cp [file] [destination]     # Copy the file in to the new directory with the original name.  
    ```
11. mv, move or rename 
    ```shell 
    > mv [file] [newname]         # Rename the file foem `file` to `newname`.  
    > mv [file] [destination]     # Move the file from current directory to the destination directory.  
    ```
12. open/xdg-open, open a file or directory with default application outside the terminal.  
    `open` works on MacOS and `xdg-open` works on linux and wsl.  
    ```shell 
    > open test.txt     # On mac 
    > xdg-open test.txt # On Linux or WSL
    ```
13. date, display the current time 
    `man date` to see more options, we won't get into this cause it won't be used very frequently.  
    ```shell 
    > date 
    Fri 8 July 2022 15:09:28 CST 
    ```
14. cat, concatenate files and print on the standard output
    For example, if a file `date.txt`'s contents are `Hello, world!`.  
    ```shell 
    > cat date.txt
    Hello, world!
    ```
15. See redirecting output in appendix B

17. echo, print whatever value you pass in. 
    ```shell 
    > echo "Hello!"
    Hello!
    > echo $PATH    # print some variables default in your terminal 
    /opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin    # something your terminal may show 
    > echo "USERNAME=Beethoven" > name.txt    # echo something into a file 
    > cat name.txt
    USERNAME=Beethoven
    ```
18. find, traverse a directory and find what you're finding
    `find` is a powerful tool but with a lot of options, we will just go through the most-used command.  
    For more info, see `man find`.  
    ```shell 
    find [dir] -name [pattern]    # search for file e.g. `find /Downloads -name main.cpp` 
    find [dir] -type d            # search for directory under this directory 
    find [dir] -type f            # search for regualr file under this directory 
    find [dir] -type l            # search for symbolic link under this directory 
    ```
19. grep, file pattern searcher 
    `grep` too, we will just go through the most-used, for more info, see `man grep`.  
    ```shell 
    grep [search_pattern] [file]     # Search for all lines that contain the pattern, e.g. grep "Tom" file.txt 
    grep -r [search_pattern] [dir]   # Recursively search in all files in directory for all lines that contain the pattern 
    grep -i [search_pattern] [file]  # Search for all lines that contain the case-insensitive pattern
    ```
20. sudo, execute the command with the security privileges of the superuser
    ```shell 
    sudo [command]    # execute command with security privileges
    ```
## Appendix 
### Appendix A : Options 
When running `man [command]`, you will see a `SYNOPSIS`, like : 
```shell 
> man clear 
echo(1)          General Commands Manual          echo(1)

NAME
     echo – write arguments to the standard output

SYNOPSIS
     echo [-n] [string ...]

DESCRIPTION-n    
        (...)
        -n      Do not print the trailing newline character. 
        (...)

SEE ALSO 
        (...)
```
The `SYNOPSIS` part is the options of the command you could add, and the description will give you more detail about the corresponding options.  
### Appendix B : Redirecting output 
`A > B` or `A >> B` will redirect the output from A to B, while `A > B` will replace substitute B to A and `A >> B` will append B with A. 
```shell 
> date 
Fri 8 July 2022 15:09:28 CST 
> cat test.txt    # See what is inside test.txt, while nothing is inside so show nothing now. 
> date > test.txt    # Nothing show cause the output is redirected to test.txt 
> cat test.txt    # Now test.txt has the output of date
Fri 8 July 2022 15:09:28 CST 
> echo "Hello, world!" >> test.txt 
> cat test.txt    # Now test.txt was appended by "Hello, world!"
Fri 8 July 2022 15:09:28 CST 
Hello, world!
> echo "HAHA!" > test.txt
> cat test.txt    # Now test.txt was substituted by "HAHA!"
HAHA!
```
### Appendix C : Expansions
1. `*` and `?`
    ```shell 
    > ls *.cpp    # List files only end with '.cpp' [* will match everything]
    main.cpp    test.cpp    hello.cpp 
    > ls *.???    # ??? will match any three characters in a roll 
    main.cpp    test.cpp    hello.cpp   test.vim    init.lua 
    > rm *.???    # LIkely, this command will remove any file ends with `.` plus three characters
    ```
2. `{}`
    ```shell 
    > echo {a, b, c}
    a  b  c
    > echo {a, b, c}.txt 
    a.txt    b.txt    c.txt 
    > touch {a, b, c}.txt    
    > ls 
    a.txt    b.txt    c.txt 
    > touch app.{js, html, css, py}
    > ls 
    a.txt    b.txt    c.txt 
    app.js   app.html app.css  app.py
    > ls app.*
    app.js   app.html app.css  app.py
    > echo Day{1..5}
    Day1 Day2 Day3 Day4 Day5 
    ```

### Appendix D : Piping 
Before introducing piping, first we need to know a new command `wc`(word count).  
```shell 
wc [file]       # List out number of line, word, byte 
wc -w [file]    # Number of words only
wc -l [file]    # Number of line only
wc -c [file]    # Number of bytes only
```
Example : 
```shell 
> cat test.txt
Hello World
This is test.txt 
> wc test.txt 
       2       5      29 test.txt      # line, word, number of byte, file name
> wc -w test.txt                       # number of word
       5 test.txt 
```
Now, we can dive into piping.
Piping is taking standard output from the pipe character's(|) left and make it standard input of the command on it's right.  
For instance, `echo "Hello World" | wc -w`, this command take `echo`'s standard output and make is `wc`'s standard input.  
```shell 
> echo "Hello World" | wc -w
       2       # It's 2 cause "Hello World" is two words
```
Piping can do more than this, like 
```shell 
> cat test.txt | grep "function"    # Grep "function" keyword in file test.txt
> cat test.txt | less               # Preview what's inside test.txt but more fitting the current terminal window 
```

## Credits 
[freecodecamp.org](https://www.youtube.com/c/Freecodecamp)
[terminal-mac-cheatsheet](https://github.com/0nn0/terminal-mac-cheatsheet)

