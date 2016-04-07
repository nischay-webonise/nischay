#!/bin/bash

mkdir public_html test_folder

 
touch public_html/readme.txt

touch test_folder/a test_folder/b test_folder/c test_folder/d test_folder/e test_folder/f test_folder/g test_folder/h

chmod 777 public_html

cd test_folder

for filename in `find . -maxdepth 1 -type f | cut --complement -c1,2 | sort | head -4`

do
	mv "$filename" "../public_html/$filename"
	echo "Moved $filename to ../public_html/$filename"
done
cd ..
mkdir t

cp -R /home/webonise/NISCHAY/public_html /home/webonise/NISCHAY/t/

mv /home/webonise/NISCHAY/t/public_html /home/webonise/NISCHAY/public_html

mv /home/webonise/NISCHAY/public_html/public_html /home/webonise/NISCHAY/public_html/renamed_folder

