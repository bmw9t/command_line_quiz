command_line_quiz
=================

A quiz written in ruby for practicing command line. To download, 

```
$ git clone git@github.com:bmw9t/command_line_quiz.git
```
If you get a "permission denied" error, use this instead to clone using HTTPS instead of SSH:

```
$ git clone https://github.com/bmw9t/command_line_quiz.git
```

To run the quiz, you must have ruby installed. Move to the repository. Run the quiz directly from the terminal by typing this from the repository folder:

```
$ ruby quiz.rb
```

The quiz presents you with the function that a command performs. You type the command. An example:

```
What command performs this function?
Prints working directory.
$ pwd
```

If you answer correctly, the term is removed from the deck of "flashcards." If you answer incorrectly, the program prompts you with the correct answer and asks you to give it. An incorrect answer also leaves that command in the deck to be quizzed in the future.

Note: sometimes the explanations may be opaque. This quiz is meant more to help you memorize the gist of what each command does and to get the commands under your fingers. You will need to supplment this with your own understanding of the command. To really learn what something does, google or use the man command in terminal.

Let me know if it breaks on you!

List of commands is pulled from http://cli.learncodethehardway.org/book/
