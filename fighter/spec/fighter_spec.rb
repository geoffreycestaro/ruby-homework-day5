require '../lib/fighter'

RSpec.describe Fighter do
	let(:fighter1){Fighter.new(name: "Chun Li", health: 100, power: 50)}

	let(:fighter2){Fighter.new(name: "Han Sulu", health: 80, power: 100)}

  it '.new creates a new fighter' do
    expect(fighter1).to be_an_instance_of Fighter
  end

  it '#name returns a fighter\'s name' do
    expect(fighter1.name).to eql("Chun Li")
  end

  it '#health returns a fighter\'s health' do
    expect(fighter1.health).to eql(100)
  end

  it '#health= a fighter\'s health' do
    expect(fighter1.health = 120).to eql(120)
  end

  it '#power returns a fighter\'s power' do
    expect(fighter1.power = 30).to eql(30)
  end

  it '#attacks another fighter' do
    fighter1.attack(fighter2)
    expect(fighter2.health).to eql(30)
  end

end