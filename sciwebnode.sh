updatesciwebnode(){
  cd
  echo "please input the node file name (match today's date)";
  read filename;
  export datetoday=$(date "+%Y_%m_%d");
  cd clashnode;
  mkdir $datetoday;
  cd $datetoday;
  wget https://raw.githubusercontent.com/changfengoss/pub/main/data/$datetoday/$filename
  cd
}
