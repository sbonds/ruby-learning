class Tea
end

RSpec.configure do |config|
  config.example_status_persistence_file_path = 'spec/examples.txt'
end

RSpec.describe Tea do
  let(:tea) { Tea.new }

  it 'tastes like Earl Grey' do
    expect(tea.flavor).to be :earl_grey
  end

  it 'is hot' do
    expect(tea.temperature).to be > 200.0
  end
end

=begin
"documentation" format:

    Tea
        tastes like Earl Grey (FAILED - 1)
        is hot (FAILED - 2)

HTML format with "coderay" gem installed shows the context
of the error very nicely.

=end