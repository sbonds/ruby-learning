school = {
    "Simone" => "here",
    "Jeanie" => "here"
}

names = ["Simone", "Ferriss", "Jeanie", "Cameron"]

names.each do |name|
    if school[name]
        puts "#{name} is present"
    else
        puts "#{name} is absent"
    end
end

=begin
What do I expect?

    Simone is present
    Ferriss is absent
    Jeanie is present
    Cameron is absent

=end