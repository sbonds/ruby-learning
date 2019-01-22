class Blender
    def close_lid
        puts "Sealed tight!"
    end
    def blend(speed)
        puts "Spinning on #{speed} setting."
    end
end # Blender class

blender = Blender.new
blender.close_lid
blender.blend("high")