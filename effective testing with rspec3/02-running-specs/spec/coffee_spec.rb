class Coffee
    def initialize
        # Track the additional amount the price goes up for
        # each ingredient
        @cost_of = { :milk => 0.25 }

        @base_price = 1.00

        @ingredients = []
    end

    def ingredients
        @ingredients ||= []
    end

    def add(ingredient)
        @ingredients << ingredient
    end

    def price
        price = @base_price
        # Add the price for each ingredient to the base cost
        ingredients.each do |ingredient|
            price += @cost_of[ingredient]
        end
        price
    end

    def color
        ingredients.include?(:milk) ? :light : :dark
    end

    def temperature
        # 205.0 is default? What is this, McDonalds?
        ingredients.include?(:milk) ? 190.0 : 205.0
    end
end

RSpec.configure do |config|
    config.filter_run_when_matching(focus:true)
    config.example_status_persistence_file_path = 'spec/examples.txt'
end

RSpec.describe 'A cup of coffee' do
    let(:coffee) { Coffee.new }

    it 'costs $1' do
        expect(coffee.price).to eq(1.00)
    end

    context 'with milk' do
        before { coffee.add :milk }

        it 'costs $1.25' do
            expect(coffee.price).to eq(1.25)
        end
        
        it 'is light in color' do
            pending 'Color not implemented yet'
            expect(coffee.color).to be(:light)
        end

        it 'is cooler than 200 degrees Fahrenheit' do
            pending 'Temperature not implemented yet'
            expect(coffee.temperature).to be < 200.0
        end

    end
end