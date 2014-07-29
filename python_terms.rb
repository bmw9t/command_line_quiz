{"\"\"\"" => "initiates a string that runs over multiple lines", 
	"f = open(\"workfile\", \"w\")" => "opens a file or writes it if one doesn't exist. -w means you will write to it. -r means you will read. -a means it will append to a file. Here, open a file named \"workfile\" with write abilities and store it to a variable \"f\"", 
	"f.write(\"This is a test.\")" => "writes some text to a file. Here, write the string \"This is a test.\" to a file object \"f\"", 
	"f.close()" => "closes a file. Here, close a file object \"f\"", 
	"f.read()" => "reads a file. Here, read a file object \"f\"", 
	"import greet" => "loads a file so that its functions can be used. Here, import the module \"greet\"",
	"greet.greetEntity()" => "Syntax for calling functions of an included module. You have to run the method by first calling the program's name. ex: the file is greet.py and the function is greetEntity", 
	"combined = first + second" => "concatenate two string variables \"first\" and \"second\" and stores them in a variable \"combined\"", 
	"sentence += \"a\"" => "append to the end of a string. Here append the letter \"a\" to the end of a stringe variable \"sentence\"", 
	"len(string)" => "find the length of a string variable \"string\"", 
	"big_string.find(\"world\")" => "find a substring \"world\" in a variable \"big_string\", returns the starting index portion of that substring.", 
	"string.lower()" => "converts a string variable \"string\" to lower case", 
	"string.upper()" => "converts a string variable \"string\" to upper case", 
	"big_string.replace(first, second)" => "finds all instances of first and replaces them with second in a variable \"big_string\"", 
	"message[0:6]" => "slice - create a substring of letters 1 to 7 of the string variable \"message\"", 
	"% d" => "integer decimal string formatting", 
	"y = raw_input(\"Name? \")" => "prompts the user with \"Name\" and puts the result into the variable y.", 
	"modules" => "another name for libraries, which give you features",	
	"from sys import argv" => "line allows your program to take arguments; it gets input from the user through the command line", 
	"txt.readline()" => "reads just one line of a file. With no parameters it reads the first line. Here read the first line of a file object \"txt\"", 
	"txt.truncate()" => "Empties the file. Careful! Here truncate a file object \"txt\"", 
	"for number in the_list" => "write a for loop that iterates through a list \"the_list\" with the local variable \"number\"",
	"print content of variables at different points" => "what is the best way to debug?",
	"dicts" => "ruby calls them hashes. write their abbreviation.",
	"my_dict = {\"shoe\" : \"nike\", \"dog\" : \"booboo\", \"cat\" : \"hector\"}" => "dicts syntax. make a dictionary \"my_dict\" with three key value pairs- shoe (nike), cat (hector), dog(booboo)",
	"break" => "used to interrupt the cycle of a loop",
	"continue" => "used to interrupt the current cycle, but the overall cycle continues (for nested loops or branching)",
	"elif" => "Ruby has elsif. What does python have?", 
	"else and if" => "Ruby has else and if. What does python have?",
	"if weight > 50" => "if syntax. make a statement that checks to see if the variable \"weight\" is greater than 50.",
	"assert" => "used for debugging purposes. if a proposed condition is false, the execution of the script will fail.",
	"pass" => "this keyword does nothing, but it can be useful as a placeholder keyword for functions that haven't been implemented yet.",
	"yield" => "this keyword is used with generators. it exits a generator and returns a value.",
	"global" => "allows us to access and manipulate, from within a function, a variable that has been defined outside that function.",
	"class Square:" => "keyword creates new user defined objects. include syntax. instantiate a new type Square.",
	"lambda" => "used to create an inline function on the fly",
	"return" => "keyword that exits a function and returns a value.",
	"finally" => "keyword used at the end to clean up resources.",
	"raise" => "used to create a user defined exception.",
	"exec" => "keyword executes Python code dynamically.",
	"except" => "keyword allows you to catch a particular exception that you define and tell what error message will be displayed.",
	"from" => "used to import a specific variable, class, or function from a module.",
	"del a[:2]" => "keyword used to delete objects. delete the first two items of a dict.",
	"not" => "keyword that negates a boolean value.",
	"and" => "keyword used if all conditions in a boolean expression must be correct.",
	"while (i != 0):" => "type of loop, executed until the expression evaluates to false. here, the exprssion is i not equal to 0.",
	"import random as rnd" => "keyword that imports a module as a different alias. Here, import random with the alias \"rnd\".",
	"try" => "attempts a block of code in preparation for an exception test.",
	"def" => "used to create a new user defined function.",
	"or" => "keyword used when only one of a set of boolean expressions must evaluate to true.",
	"in" => "keyword used to interact with a set of numbers. ie: used to search for a particular number or as part of a for loop.",
	"is" => "keyword used to test object identity.",
	"with" => "keyword used when working with unmannaged resources. It clarifies code that would previously use a try…finally block."
}
# //
# \'
# \"
# \a
# \b
# \f
# \n
# \r
# \t
# \v

# %i
# %o
# %u
# %x
# %X
# %e
# %E
# %f
# %F
# %g
# %G
# %c
# %r
# %s
# %%

# operators:
# **
# //
# <>
# ()
# []
# {}
# @
# ,
# :
# .
# ;
# -=
# *=
# /=
# //=
# %=
# **=