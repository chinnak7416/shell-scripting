#!\bin\bash

student_name="John"

echo student_name = $student_name
echo student_name = ${student_name}

DATE=2022-06-13
echo Good evening, Today date is $DATE

## Command Substitution
DATE=$(date +%F)
