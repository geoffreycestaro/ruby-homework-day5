RSpec.describe "#hola" do
  it 'greets a person with their name' do
    expect(hola('World')).to eql('Hello World')
  end
end

def hola(name)
  "Hello #{name}"
end