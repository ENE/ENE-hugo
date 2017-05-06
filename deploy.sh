#!/bin/bash

echo
echo "MARKDOWN STATUS"
echo
git status
echo
echo "HTML STATUS"
echo
cd public
git status
cd ..
echo

echo -n "   > "
COMMIT="git commit -a --amend --no-edit";
if [ -n "$1" ]
then
    COMMIT="git commit -a -m \"$1\""
    echo "You will commit with message" 
else
    echo "you will amend" 
fi
echo

echo -n "Continue? [y/n] "
read answer
if echo "$answer" | grep -iq "^n"
then
    exit 1
fi
echo

hugo

echo
echo "TARGET"
echo
cd public
git status
echo
$COMMIT
git push -f
cd ..

echo
echo "SOURCE"
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
