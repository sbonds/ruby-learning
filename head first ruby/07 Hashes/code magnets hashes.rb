def volume(options)
    options[:depth] * options[:height] * options[:width]
end

result=volume(width: 10, height: 5, depth: 2.5)

puts "Volume is #{result}"

# Output should be: "Volume is 125.0"