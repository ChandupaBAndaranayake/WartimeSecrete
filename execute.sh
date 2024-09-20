
if [[ ${#password} -ge 8 ]] &&  # Check length
   [[ "$password" =~ [a-z] ]] &&  # Check for lowercase
   [[ "$password" =~ [A-Z] ]] &&  # Check for uppercase
   [[ "$password" =~ [0-9] ]];    # Check for numeric
then
    echo "true"  # Password is strong
else
    echo "false"  # Password is weak
fi