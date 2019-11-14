# doMe
doMe is a shell script app working in bash

The app can be run with no arguments ./doMe to get a menu screen that looks like this:

Welcome to doMe where stuff gets done!

How can I help you?

A) See current items
B) Add new item
C) Mark item as completed
D) See completed items

Q) Quit


Otherwise, it can be run with these commands:

./doMe help
Shows this help screen.
---------------------------------------------------
./doMe list
Shows a list of uncompleted items.
---------------------------------------------------
./doMe complete [number]
Marks the given number item as completed.
---------------------------------------------------
./doMe list completed
Shows a list of completed items.
---------------------------------------------------
./doMe add [title]
Adds a new item with the given title.
Additional text can be sent to stdin like this:
echo "aditional text.." | ./doMe add "title.."
---------------------------------------------------
