contents = []

File.open("sample.txt") do |file|
    contents = file.readlines
end

puts contents

=begin
Expected output:
This is the first line in the file.
This is the second.
This is the last line.
=end