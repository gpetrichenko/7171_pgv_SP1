  GNU nano 4.8                         sp1.sh                         Modified  
#!/bin/bash
clear
for((;;))
do
echo -e "\033[37m          ,     ,       \033[31mWelcome to Laboratory Work 1 System"
echo -e "\033[37m         (\____/)       \033[31mAbout: \033[33mThis is a program "
echo -e "\033[37m          (_oo_)        \033[31mAutor: \033[33mPetrichenko Georgie"
echo -e "\033[37m            (O)         \033[31mCommands: \033[33mFor help, write --help"
echo -e "\033[37m          __||__    \)            \033[33mFor convert, write \033[31m--convert"
echo -e "\033[37m       []/______\[] /             \033[33mFor change size, write \033[31m--size "
echo -e "\033[37m       / \______/ \/              \033[33mFor quit, write \033[31m--quit"
echo -e "\033[37m      /    /__\                   \033[33mFor change name, write \033[31m--name"
echo -e "\033[37m     (\   /____\ "

read -p "Select an action: " choose

if [ "$choose" == "--help" ]
then
  clear
  echo "HELP TEXT:"
  echo -e "         \033[33mFor change name, write \033[31m--name"
  echo -e "         \033[33mFor convert, write \033[31m--convert"
  echo -e "         \033[33mFor change size, write \033[31m--size"
  echo -e "         \033[33mFor quit, write \033[31m--quit\033[37m"

elif [ "$choose" == "--name" ]
  then
    clear
    read -p "Enter the file name (example: 1.jpg): " name_file
         while [ -f '$name_file' ]
	 do
           echo -e "File found: "
         done

elif [ "$choose" == "--size" ]
  then
    clear
    read -p "Enter the size [example: 64]: " conv_size
    read -p "Set new name: " new_name_file
    cp "$name_file" "$new_name_file"."$name_file" 
    mogrify -adaptive-resize "$conv_size" "$new_name_file"."$name_file"
    echo -e "File resize"

elif [ "$choose" == "--convert" ]
  then
    clear
    read -p "Select format to convert image:" conv_format
    read -p "Set new name: " new_name_file
    cp "$name_file" "$new_name_file"."$name_file"
    mogrify -format "$conv_format" "$new_name_file"."$name_file"
    echo -e "File converting"

elif [ "$choose" == "--quit" ]
   then
     clear
     exit 1;
fi
done
