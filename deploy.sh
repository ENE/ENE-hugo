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
    touch commit.txt
    echo "$1" > commit.txt
    COMMIT="git commit -a -F $(pwd)/commit.txt"
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
