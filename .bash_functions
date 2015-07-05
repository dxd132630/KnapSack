#source it in .bashrc
[[ -f ~/.bash_functions ]] && . ~/.functions


# edit the selected bash config file
function editbash {
    echo $1
    if [[ "$1" == "a" ]]; then
        emacs ~/.bash_aliases
    elif [[ "$1" == "f" ]]; then
        emacs ~/.bash_functions
    else
        emacs ~/.bashrc
    fi
    echo "done"
}

# print the last ten modified files in the specified directory
function last {
    ls -lt $1 | head
}

# copy a file to the clipboard from the command line
function copyfile {
    cat $1 | xclip -selection clipboard
}

# shortcut for recursively grepping
function gr {
    grep -r $1 .
}

# shortcut for compiling and running Java programs (I use this for competitions)
function j {
    filename="${1%.*}"
    javac $filename.java
    if [[ $? == 0 ]]; then
       java $filename
    fi
}

# shortcut for compiling and running C++ programs
function g {
    filename="${1%.*}"
    g++ $filename.cpp -o $filename
    if [[ $? == 0 ]]; then
       ./$filename
    fi
}
