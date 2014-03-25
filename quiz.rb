#initializes needed variables
quiz_type = ""
answer = ""
question= ""
response= ""

#defines a hash full of the terms and their meanings
terms = {"pwd" => "print working directory", "hostname" => "my computer's network name", "mkdir" => "make directory", 
	"cd" => "change directory", "ls" => "list directory", "rmdir" => "remove directory", "pushd" => "push directory", 
	"popd" => "pop directory", "cp" => "copy directory", "mv" => "move a file or directory", 
	"less" => "page through a file", "cat" => "print the whole file", "xargs" => "execute arguments", 
	"find" => "find files", "grep" => "find things inside files", "man" => "read a manual page", 
	"apropos" => "find what man page is appropriate", "env" => "look at your environment", 
	"echo" => "print some arguments", "export" => "export/set a new environment variable", 
	"exit" => "exit the shell", "sudo" => "DANGER! become super root user root DANGER!", 
	"chmod" => "change permission modifiers", "chown" => "change ownership"}
shuffle_terms = {}

#shifts the hash to an array, shuffles the terms, then puts them back in a hash
def shuffle_terms(terms_to_shuffle)
	terms = Hash[terms_to_shuffle.to_a.shuffle]
	return terms
end

def quiz(key_terms, quiz_type)
	key_terms = shuffle_terms(key_terms)
	question, answer = set_question_and_answer(key_terms, quiz_type)
	prompt("quiz prompt #{quiz_type}")
	puts question
	prompt("input")

	response = gets.chomp()
	evaluate_response(key_terms, response, answer, quiz_type)
end

# takes user response. If correct, removes that term from the hash and asks another question. If incorrect,
# user is given the answer and prompted to write it out.
def evaluate_response(key_terms, response, answer, quiz_type)
	if response == "#{answer}"
		key_terms.shift
		if key_terms.empty?
			prompt("end_quiz")
		else
			prompt("continue_quiz")
			quiz(key_terms, quiz_type)
		end
	else
		prompt("incorrect answer")
		puts "#{answer}"
		prompt("input")
		gets.chomp()
		quiz(key_terms, quiz_type)
	end
end

#prompts the user to choose the type of quiz.
def choose_quiz(key_terms)
	prompt("set_up_quiz")
	quiz_type = gets.chomp()
	if (quiz_type == "A") || (quiz_type == "a")
		quiz(key_terms, "A")
	elsif (quiz_type == "B") || (quiz_type == "b")
		quiz(key_terms, "B")
	else
		puts "Please choose A or B"
		choose_quiz(key_terms)
	end
end

#sets answer and question according to the type of quiz
def set_question_and_answer(key_terms, quiz_type)
		if quiz_type == "A"
		question = key_terms.first.last
		answer = key_terms.first.first
	else
		question = key_terms.first.first
		answer = key_terms.first.last
	end
	return question, answer
end

def prompt(use_case)
	case use_case
	when "set_up_quiz"
		puts "Welcome to the command line quiz based on the Command Line Crash Course."
		puts "How do you want to study?"
		puts "A: identify term when given a definition"
		puts "B: identify definition when given a term"
		print "> "
	when "end_quiz"
		puts "Congratulations - you've finished all the questions."
	when "continue quiz"
		puts "Correct! Here is another."
	when "input"
		print "> "
	when "incorrect answer"
		print "Incorrect. Type out the correct answer to practice - "
	when "quiz prompt A"
		puts "What command performs this function?"
	when "quiz prompt B"
		puts "What function does this command perform?"
	end
end

choose_quiz(terms)

#appears to be arbitrarily jumping from question type to question type. And in Quiz A the hash key pairings are getting mixed up.


