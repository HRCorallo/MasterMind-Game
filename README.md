# MasterMind-Game
Mastermind

We’re going to build a game of mastermind. The purpose is so we can build something interesting for Heather’s apprenticeship. You can play the game here. An example game board may look something like this:



Interface

We haven’t decided on this yet, maybe the command-line, maybe the web. So we’ll describe interaction in a way which is interface agnostic.

Game Description

A player is presented with a blank game board. The player’s goal is to guess a secret pattern, which is displayed in a concealed manner on the game board. One row of the board will hold the solution, and 10 rows will be available for the player to guess in. The pattern is a series of coloured 4 pegs, and there are 6 colours each peg can be. The program selects the secret pattern at the time the game starts.
To play the game, the player is presented with the six colours of pegs that they can guess, and they select 4 colours to fill their guess in. As they guess, they see the board update (this way they can see their guess progress). After they do this 4 times, they can “check” their guess. If their guess is correct, they are shown the secret and given a congratulatory message. 

If their guess is incorrect, they are shown a series of colours that indicate how close they were (in the image, these shown in the square of 4 small pegs to the right of each row). For each peg of the correct colour and position, they see one “correct” peg (in the game above, these are shown in black). For each peg of the correct colour in the incorrect position, they see one “almost correct” peg (in the game above, these are shown in white).

The player can then use this feedback to construct their next guess, which they will make in the next row.

If the player has not guessed the secret by the time they run out of rows, they lose the game.


The Happy Path

A user starts a game. The secret is PBGP. The user selects R(ed) and sees a R peg filled in on the first row. They select R three more times and then “check” their answer. No feedback pegs are shown. And they’re onto the second guess. They select YPPP and check it, and see one “correct” and one “almost” peg (the far-right P is correct, one of the other two Ps should have been on the far left). They next select PYGB and when they check it, they see 2 correct, 1 almost (far-left P is correct, G is correct, B is in the wrong spot). They next PYBO and see 1 correct, 1 almost. They select GYGP and see 2 correct. They select PBGP and are told they were correct and are shown the solution.
