#!/bin/bash
#
# The MIT License (MIT)
#
# Copyright (c) 2017 Alexandre Magno ‒ alexandre.mbm@gmail.com
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

if [ "$1" == "install" ]; then

    # TODO fixes or cares

    export HUGO_PROJECT=$(pwd)
    export PATH=$PATH:$HUGO_PROJECT
    eval $(ssh-agent -s)
    ssh-add
    ssh -T git@github.com
    exit 0

fi

if [ -z $HUGO_PROJECT ]; then

    echo "error: hman is not installed"
    exit 2

fi

function show_help() {

    echo
    echo "  hman                     Back to root"
    echo "       md                  To check Markdown, and can back to root"
    echo "       html                To check the HTML and enter into it"
    echo "       commit [message]    Commit"
    echo
    echo "       -h | --help         Shows these instructions"
    echo

}

function untracked_count() {
    git ls-files --others --exclude-standard | wc -l
}

function untracked_cd() {
    [ $(untracked_count) -ne 0 ] && echo -e "\n  > cd $(pwd)"
}

function untracked_abort() {
    [ $(untracked_count) -ne 0 ] &&
        echo -e "\nerror: untracked files \n" &&
        exit 4
}

function status_md() {

    cd $HUGO_PROJECT
    echo
    echo "MARKDOWN STATUS"
    echo
    git status
    untracked_cd
    echo

}

function status_html() {

    cd $HUGO_PROJECT
    echo
    hugo
    echo
    echo "HTML STATUS"
    echo
    cd public
    git status
    untracked_cd
    cd ..
    echo

}

function commit() {

    cd $HUGO_PROJECT

    echo -e -n "\n   > "
    COMMIT="git commit -a --amend --no-edit";
    if [ -n "$1" ]
    then
        touch commit.txt
        echo "$1" > commit.txt
        COMMIT="git commit -a -F $(pwd)/commit.txt"
        echo "You will commit with message"
    else
        echo "You will amend"
    fi
    echo

    echo -n "Continue? [y/n] "
    read answer
    if echo "$answer" | grep -iq "^n"
    then
        exit 3
    fi
    echo

    hugo
    cd public
    untracked_abort
    echo
    echo "HTML STATUS"
    echo
    $COMMIT
    git push -f
    cd ..

    untracked_abort
    echo
    echo "MARKDOWN STATUS"
    echo
    $COMMIT
    echo

    if [ -n "$1" ]
    then
        echo "  > make \"git push\""
        echo
    else
        echo "  > make \"git push -f\""
        echo
    fi

}

case $1 in

    md)
        status_md
        ;;

    html)
        status_html
        ;;

    '')
        echo -e "\n  > cd $HUGO_PROJECT\n"
        ;;

    -h|--help)
        show_help
        ;;

    commit)
        commit "$2"  # TODO reject $3
        ;;

    *)
        echo "error: unknown parameter"
        exit 1
        ;;

esac
