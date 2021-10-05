#! /bin/bash

echo "Hello welcome to Automatic Project Creation By Imira Randeniya"


read -p "Enter project name: " ProjectName
read -p "Enter autuor: " Author
read -p "Enter file extension: " Extension
echo ""

echo "Creating Project Directory..."
mkdir $ProjectName

cd $ProjectName

echo "Creating File..."
touch $ProjectName$Extension

echo "Adding Project Name & Author To The File..."
if [ "$Extension" == ".py" ]
then
    echo "#Project Name: $ProjectName" >> $ProjectName$Extension
    echo "#Author: $Author" >> $ProjectName$Extension
elif [ "$Extension" == '.java' ]
then
    echo "//Project Name: $ProjectName" >> $ProjectName$Extension
    echo "//Author: $Author" >> $ProjectName$Extension
elif [ "$Extension" == '.dart' ]
then
    echo "//Project Name: $ProjectName" >> $ProjectName$Extension
    echo "//Author: $Author" >> $ProjectName$Extension
else
    echo "Project Name: $ProjectName" >> $ProjectName$Extension
    echo "Author: $Author" >> $ProjectName$Extension
fi

echo "Marking File As Executable..."
chmod +x $ProjectName$Extension

echo ""
echo "Done"