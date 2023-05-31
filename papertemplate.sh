# author: Pengfei Song
cd /home/aidishage/Desktop/MyPapersNotes
echo "Please input the paper or folder name"
read folder
mkdir $folder
cd $folder
export datetoday=$(date "+%Y_%m_%d");
mkdir firstdraft
cd firstdraft
ln -s  /home/aidishage/Desktop/MyStudyBook/mybib.bib ./mybib.bib
cd ..
cp -r /home/aidishage/Desktop/MyPapersNotes/LatexTemplate/Coverletter Coverletter
cp -r /home/aidishage/Desktop/MyPapersNotes/LatexTemplate/Response Response
cp /home/aidishage/Desktop/MyPapersNotes/LatexTemplate/Highlights.docx .
