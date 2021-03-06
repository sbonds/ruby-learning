module JetPropelled
  def move(destination)
    puts "Flying to #{destination}."
  end
end

class Robot
  def move(destination)
     puts "Walking to #{destination}."
  end
end

class TankBot  <  Robot
  include JetPropelled
  def move(destination)
     puts "Rolling to #{destination}."
  end
end

class HoverBot  <  Robot
  include JetPropelled
end

class FarmerBot  <  Robot
end

TankBot.new.move("hangar")
HoverBot.new.move("lab")
FarmerBot.new.move("field")

=begin
Output guess:
- "Rolling to hangar"
- "Flying to lab"
- "Walking to field"

=end