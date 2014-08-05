command_line_quiz
=================

A quiz written in ruby for practicing command line. To download, 

$ git clone git@github.com:bmw9t/command_line_quiz.git

To run the quiz, you must have ruby installed. Run the quiz directly from the terminal by typing this from the repository folder:

$ ruby quiz.rb


The quiz presents you with the function that a command performs. You type the command. An example:

Prints working directory.
$ pwd

If you answer correctly, the term is removed from the deck of "flashcards." If you answer incorrectly, the program prompts you with the correct answer and asks you to give it. An incorrect answer also leaves that command in the deck to be quizzed in the future.

List of commands is pulled from [Learn Command Line the Hard Way]({{ http://cli.learncodethehardway.org/book/ }})
