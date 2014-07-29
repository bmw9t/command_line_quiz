
#initializes needed things
quiz_type = ""
library_choice = ""
answer = ""
question= ""
response= ""
shuffle_terms = {}

#fix it so the prompts work based on the python quiz.

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
	#Commented line gives user the choice of quizzing by answer or definition.
	#prompt("set_up_quiz")
	#quiz_type = gets.chomp()
	quiz_type = "A"
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

#stores all the various messages sent to the user.
def prompt(use_case)
	case use_case
	when "library choice"
		puts "Which quiz do you want?"
		puts "A: Command Line"
		puts "B: Python"
		print "> "
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

def library_choice()
	#gives user choice python/CLI terms
	#prompt("library choice")
	#library_choice = gets.chomp()
	library_choice = "A"
	if (library_choice == "A") || (library_choice == "a")
		txt = File.open("ruby_terms.rb")
		ruby_terms = txt.read
		ruby_terms = eval(ruby_terms)
		terms = ruby_terms
	else
		txt = File.open("python_terms.rb")
		python_terms = txt.read
		python_terms = eval(python_terms)
		terms = python_terms
	end
	return terms
end

terms = library_choice()

choose_quiz(terms)
