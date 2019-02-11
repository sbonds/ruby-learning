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
        
        it 'is light in color'

        it 'is cooler than 200 degrees Fahrenheit'
    end
end