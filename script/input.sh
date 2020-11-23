# pwnable kr 'input'
# Need to be executed like this env $(printf '\xde\xad\xbe\xef')=$(printf '\xca\xfe\xba\xbe') bash pp.sh


echo -ne "\x00\x0a\x02\xff" > file
echo -ne "\0\0\0\0" > $'\n'
while true; do echo -ne "\xde\xad\xbe\xef" | nc localhost 4242; sleep 2; done &
echo -ne "\x00\x0a\x00\xff" | ./a.out $(python -c 'print ("A " * 64)') "" "$(printf ' \n\r')" "4242" $(python -c 'print ("A " * 32)') 2<>file
