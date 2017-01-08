get_char()
{
    SAVEDSTTY=`stty -g`
    stty -echo
    stty raw
    dd if=/dev/tty bs=1 count=1 2> /dev/null
    stty -raw
    stty echo
    stty $SAVEDSTTY
}

echo "\n1 ./compiler -f c_code/factorial.c\n"
./compiler -f c_code/factorial.c
echo "Press any key to continue..."
char=`get_char`
echo "\n2 ./compiler -fp c_code/factorial.c\n"
./compiler -fp c_code/factorial.c
echo "Press any key to continue..."
char=`get_char`
echo "\n3 lli c_code/factorial.ll\n"
lli c_code/factorial.ll
echo "\nPress any key to continue..."
char=`get_char`
echo "\n4 python c_code/factorial.py\n"
python c_code/factorial.py
