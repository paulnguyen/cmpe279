gcc -fno-stack-protector -g -m32 -o notesearch notesearch.c
sudo chown root:root ./notesearch
sudo chmod u+s ./notesearch
./notesearch
