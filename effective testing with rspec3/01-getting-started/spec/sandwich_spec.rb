RSpec.describe 'An ideal sandwich' do
    it 'is delicious' do
        sandwich = Sandwich.new('delicous',[])

        taste = sandwich.taste

        expect(taste).to eq('delicious')

    end
end