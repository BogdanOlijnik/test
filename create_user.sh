#! /bin/bash

while [[ $# > 1 ]]
do
    sKey="$1"
    case $sKey in
      --name)
         sName="$2"
         shift
         ;;
      --lastname)
         sLastName="$2"
         shift
         ;;
      --age)
         sAge="$2"
         shift
         ;;
      --date)
         sDate="$2"
         shift
         ;;
      --city)
         sCity="$2"
         shift
         ;;
      --email)
         sEmail="$2"
         shift
         ;;
      esac
   shift
 done

createUser(){
   if [[ $sName =~ ^[a-Z]*$ ]];
      then
         echo "Name valid"
      else
         echo "Error: name invalid"
	 exit 1
   fi
   
   if [[ $sLastName =~ ^[a-Z]*$ ]];
      then
         echo "LastName valid"
      else
         echo "Error: Lastname invalid"
	 exit 1
   fi

   if [[ $sAge =~ ^[0-9][0-9]$ ]];
      then
         echo "Age valid"
      else
         echo "Age invalid"
	 exit 1
   fi

   if [[ $sDate =~ ^[0-9][0-9][0-9][0-9]-[0-1][0-9]-[0-3][0-9]$ ]];
      then
         echo "Data valid"
      else
         echo "Data invalid"
	 exit 1
   fi

    if [[ $sCity =~ ^[a-Z]*$ ]];
      then
         echo "City valid"
      else
         echo "Error: City invalid"
	 exit 1
   fi
  
   #if echo "${$sEmail}" | grep '^[a-Z0-9_-]*@[a-Z0-9]*\.[a-z]*$' >/dev/null;
   if [[ $sEmail=^[a-Z_-]+[0-9]*@[a-z].[a-z]*$ ]];
      then
         echo "Adress $mail  valid"
      else
         echo "Adress $mail invalid"
	 exit 1
   fi
   
   echo "$sName $sLastName $sAge $sDate $sCity $sEmail" >> ./list.txt;
  
}

createUser;
