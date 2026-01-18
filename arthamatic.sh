#!/bin/bash
echo -e "please enter the first value: /c"
read -r a
echo -e "please enter the second value:/c"
read -r b

echo "a+b value is $(($a+$b))" #addition
echo "a-b the value is $(($a-$b))" #subtraction

echo "the operation completed successfully"
