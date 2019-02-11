class Coffee
    def initialize
        # Track the additional amount the price goes up for
        # each ingredient
        @cost_of = { :milk => 0.25 }
    end

    def ingredients
        @ingredients ||= []
    end

    def add(ingredient)
        p ingredient
        @ingredients << ingredient
    end

    def price
        price = 1.00
        # Add the price for each ingredient to the base cost
        # This explicit way doesn't seem very Ruby-ish
        for ingredient in @ingredients
            price += @cost_of[ingredient]
        end
        price
    end
end

RSpec.configure do |config|
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
    end
end