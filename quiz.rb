#initializes needed variables
quiz_type = ""
answer = ""

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

def quiz_by_use(key_terms)
	#shuffles the terms
	key_terms = shuffle_terms(key_terms)
	#Prompts the user
	puts "What command performs this function?"
	#Takes the shuffled hash and pulls out the first command line definition.
	puts key_terms.first.last
	print "> "
	# gets user response. If correct, removes that term from the hash and asks another question. If incorrect,
	# user is given the answer and prompted to write it out.
	answer = gets.chomp()
	if answer == "#{key_terms.first.first}"
		key_terms.shift
		if key_terms.empty?
			puts "Congratulations - you've finished all the questions."
		else
			puts "Correct! Here is another."
			quiz_by_use(key_terms)
		end
	else
		puts "The answer is \"#{key_terms.first.first}\". Type it out to practice."
		print "> "
		gets.chomp()
		quiz_by_use(key_terms)
	end
end

def quiz_by_term(key_terms)
	#shuffles the terms
	key_terms = shuffle_terms(key_terms)
	#prompts the user
	puts "What function does this command perform?"
	#Takes the shuffled hash and pulls out the first command line command.
	puts key_terms.first.first
	print "> "
	#Gets user response. If correct, removes that term from the hash and ask another question. If incorrect,
	#user is given the answer and prompted to write it out.
	answer = gets.chomp()
	if answer == "#{key_terms.first.last}"
		key_terms.shift
		if key_terms.empty?
			puts "Congratulations - you've finished all the questions."
		else
			puts "Correct! Here is another."
			quiz_by_term(key_terms)
		end
	else
		puts "The answer is \"#{key_terms.first.last}\". Type it out to practice."
		print "> "
		gets.chomp()
		quiz_by_term(key_terms)
	end
end

#prompts the user to choose the type of quiz.
def choose_quiz(key_terms)
	puts "Welcome to the command line quiz based on the Command Line Crash Course."
	puts "How do you want to study?"
	puts "A: identify term when given a definition"
	puts "B: identify definition when given a term"
	print "> "
	quiz_type = gets.chomp()
	if (quiz_type == "A") || (quiz_type == "a")
		quiz_by_use(key_terms)
	elsif (quiz_type == "B") || (quiz_type == "b")
		quiz_by_term(key_terms)
	else
		puts "Please choose A or B"
		choose_quiz(key_terms)
	end
end

choose_quiz(terms)
# subtracts an item from the hash.
# terms.shift

#appears to be arbitrarily jumping from question type to question type. And in Quiz A the hash key pairings are getting mixed up.


