# Cube


Once the ring of power had been found to be in Frodo's possession, Gandalf immediately rode to seek the counsel of the head of his order, Saruman. Saruman disagreed with Gandalf's belief that they should destroy the ring. He decided that he could not immediately let Gandalf go free and help Frodo, so he locked Gandalf in the highest room of his dark tower in Isengard. To keep Gandalf occupied, he placed a single door in the room that was only escapable by solving its riddle.

After a short while searching through the room for an escape, Gandalf noticed a most peculiar lock on a door that appeared to lead to the roof of the tower. The lock was a standard six sided cube with no markings on any of its surfaces. It was placed on top of a grid of size m x n. The grid had exactly six squares with paint on them. Gandalf noticed that when he rolled a blank face of the cube onto a square that had painted markings on it, the markings were transferred from the grid onto the face of the cube. When the cube was rolled onto a square where no markings were painted, and the contact surface of the cube had a marking on it, the marking was transferred from
the cube to the grid. If the cube was rolled over a square on the grid that had a marking on it and the contact surface of the cube had a marking on it of any kind, then nothing happened.

Gandalf surmised that opening the door to the roof could only occur if the cube was rolled by a sequence of moves to the goal square, such that all of the markings from the grid were transferred to the cube. Furthermore, to escape Saruman's trap, he (correctly) guessed that he would need to accomplish this in the minimum number of moves.

Given an initial conguration of paint on the squares, an initial location of the cube, and a
desired goal location, what is the minimum number of moves that Gandalf must perform to get the cube to the goal state with paint on all of its sides?
For the 1st example (see below), a sample solution would be down, right, right, up, right, right, down, left, right, left.

### Input
The input  will contain multiple test cases. Each test case will consist of an m x n
grid of characters, where m and n are each between 2 and 20. Within each test case, empty spaces will be described by '.', painted squares by 'P', illegal squares by '#', the initial position of the cube by 'C', and the goal square by 'G'. There will always be exactly 6 'P's, exactly one 'C', exactly one 'G',and no more than 12 '.'s. Input test cases will be separated by a single blank line. The input will be terminated by the end of file.

### Output
For each input test case, print the minimum number of moves required to obtain the goal state. If it is not possible to achieve this state, print -1

### Sample Input
C.PPP<br>
PPPG.

C....<br>
G##.P<br>
.##PP<br>
..PPP

PPP<br>
PCP<br>
PG.

.PPPCPPP..<br>
....G....

### Sample Output
10

23

15

21
