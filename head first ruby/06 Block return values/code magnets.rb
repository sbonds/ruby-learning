def make_casserole
    puts "Preheat oven to 375 degrees F"
    ingredients = yield
    puts "Place #{ingredients} in dish"
    puts "Bake for 20 minutes"
end

make_casserole do 
    "noodles, celery, and tuna"
end

make_casserole do 
    "rice, broccoli, and chicken" 
end

=begin
Expected output:

Preheat oven to 375 degrees F
Place noodles, celery, and tuna in dish
Bake for 20 minutes
Preheat oven to 375 degrees F
Place rice, broccoli, and chicken in dish
Bake for 20 minutes
=end