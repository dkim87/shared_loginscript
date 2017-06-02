# zsh c,v
# test emacs
#myed=emacs
c(){
    if [ -d $@ ]; then
        cl "$@"
    elif [ -f $@ ]; then
        $myed "$@"
    else
        echo "Hey, such file or directory does not exist. Use v() instead of c() to create a file."
    fi
}

e(){
    if [ -d $@ ]; then
        cl "$@"
        #elif [ -f $@ ]; then
    else
        $myed "$@"
        #else
        #read -q "REPLY?Would you like to create a new file?"
        #if [[ $REPLY =~ '^[Yy]$' ]]; then # $REPLY = y also works
        #nvim "$@"
        #else
        #echo "hey, there is my_error, check .zshrc"
        #fi
    fi
}

v(){
    if [ -d $@ ]; then
        cl "$@"
        #elif [ -f $@ ]; then
    else
        $myvi "$@"
        #else
        #read -q "REPLY?Would you like to create a new file?"
        #if [[ $REPLY =~ '^[Yy]$' ]]; then # $REPLY = y also works
        #nvim "$@"
        #else
        #echo "hey, there is my_error, check .zshrc"
        #fi
    fi
}
