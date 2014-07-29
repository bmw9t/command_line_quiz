txt = File.open("python.rb")
python_terms = txt.read
python_terms = eval(python_terms)
puts python_terms["close"]