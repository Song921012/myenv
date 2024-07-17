# author: Pengfei Song
cd /Users/aidishage/Desktop/MyPapersNotes
echo "Please input the paper or folder name"
read folder
mkdir $folder
cd $folder
export datetoday=$(date "+%Y_%m_%d");
mkdir firstdraft
cd firstdraft
ln -s  /Users/aidishage/Desktop/MyStudyBook/mybib.bib ./mybib.bib
cd ..
cp -r /Users/aidishage/Desktop/MyPapersNotes/LatexTemplate/Coverletter Coverletter
cp -r /Users/aidishage/Desktop/MyPapersNotes/LatexTemplate/Response Response
cp /Users/aidishage/Desktop/MyPapersNotes/LatexTemplate/Highlights.docx .
