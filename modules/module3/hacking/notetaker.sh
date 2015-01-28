gcc -fno-stack-protector -g -m32 -o notetaker notetaker.c
sudo chown root:root ./notetaker
sudo chmod u+s ./notetaker

./notetaker "This is a test"
sudo hexdump -C /var/notes
