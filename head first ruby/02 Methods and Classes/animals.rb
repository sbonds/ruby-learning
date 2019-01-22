class Bird
    def talk
        puts "Chirp! Chirp!"
    end
    def move(destination)
        puts "Flying to the #{destination}."
    end
end # Bird

class Dog
    def talk
        puts "Woof!"
    end
    def move(destination)
        puts "Running to the #{destination}."
    end
end # Dog

class Cat
    def talk
        puts "Meow!"
    end
    def move(destination)
        puts "Sauntering to the #{destination}."
    end
end # Cat