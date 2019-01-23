# Guess the value/output of each statement
puts true || "my"  # true
puts false || "friendship" # "friendship"
puts nil || "is" # "is"
puts "not" || "often" # "not"
first = nil
puts first || "easily" # "easily"
second = "earned."
puts second || "purchased." # "earned."
third = false
third ||= true
puts third # true
fourth = "love"
fourth ||= "praise"
puts fourth # "love"
fifth = "takes"
fifth ||= "gives"
puts fifth # "takes"
sixth = nil
sixth ||= "work."
puts sixth # "work."