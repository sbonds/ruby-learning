# IRB behaves poorly on some inputs, working with a file seems simpler
protons = { "He" => 2 } # protons = { "He"=>2 }
protons["He"] # 2
protons["C"] = 6 # 6
protons["C"] # 6
protons.has_key?("C") # true
protons.has_value?(119) # false
protons.keys # [ "He", "C"]
protons.values # [ 2, 6 ]
protons.merge({ "C" => 0, "Uh" => 147.2 }) # { "He"=>2,"C"=>0,"Uh"=>147.2}