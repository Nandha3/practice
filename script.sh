#!/bin/bash 

echo "Enter the first variable: "
read var1
echo "Enter the second variable: "
read var2

if [ "$var1" == "$var2" ]; then
        echo "Both variables are same. Hence, performing required action."
        echo "welcome" | tee file{1..10}.txt
        ls
        cat file{1..10}.txt
        echo "10 files with word welcome in it were created"
        cd ..
        pwd
        ls
        tar -cvzf output.tar.gz new
        echo "file compression success!"
        ls
        sudo yum update -y
        sudo yum install git -y
        git clone https://github.com/Nandha3/practice
        ls
        cd practice
        git checkout -b master main
        git checkout master
        cd ..
        ls
        mv -v output.tar.gz ~/practice
        cd practice
        ls
        echo "activating git"
        git add .
        git status
        git commit -m "moving to master branch"
        git push -f origin master

else
        echo "Both variables are different. Hence, performing required action."
        echo "welcome" | tee file{1..10}.txt
        ls
        cat file{1..10}.txt
        echo "10 files with word welcome in it were created"
        cd ..
        pwd
        ls
        sudo yum update -y
        sudo yum install git -y
        git clone https://github.com/Nandha3/practice
        ls
        cd practice
        git checkout -b develop main
        git checkout develop
        cd ..
        ls
        cd new
        ls
        mv -v *.txt ~/practice
        mv -v script.sh ~/practice
        cd ..
        pwd
        cd practice
        ls
        echo "activating git"
        git add .
        git commit -m "all files in the directory moving as per the requirement"
        git push -f origin develop
fi
