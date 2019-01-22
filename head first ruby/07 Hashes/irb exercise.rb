# IRB behaves poorly on some inputs, working with a file seems simpler
protons = { "He" => 2 } 
protons["He"]
protons["C"] = 6
protons["C"]
protons.has_key?("C")
protons.has_value?(119)
protons.keys
protons.values
protons.merge({ "C" => 0, "Uh" => 147.2 })