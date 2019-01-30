class Apple

  _______ Comparable

  attr_accessor _______

  def _______ (weight)

  _______ .weight = weight

  end

  def _______ (other)
    self.weight  < => .weight
  end
end

small_apple = Apple.new(0.17)
medium_apple = Apple.new(0.22)
big_apple = Apple.new(0.25)

puts "small_apple > medium_apple:"
puts small_apple > medium_apple
puts "medium_apple  <  big_apple:"
puts medium_apple  <  big_apple

=begin
Expected output:

small_apple > medium_apple
false
medium_apple < big_apple
true

Pool:

include
between?
>=
self
other
initialize
spaceship
constant
=>
<=>
:weight

=end