require 'board'

describe Board do
  it { is_expected.to respond_to(:place).with(1).argument }
  it { is_expected.to respond_to(:retrieve).with(1).argument }
  it 'places a ship' do
    expect(subject.place(column: :A, row: 1, ship: :ship)).to be :ship
  end

  it 'retrieves a ship at a location' do
    ship = double :ship
    subject.place(column: :A, row: 1, ship: ship)
    expect(subject.retrieve(column: :A, row: 1)).to be ship
  end

  it 'does not retreive a ship from an empty location' do
    ship = double :ship
    subject.place(column: :A, row: 0, ship: ship)
    expect(subject.retrieve(column: :A, row: 1)).not_to be ship
  end

  it 'receives a location and fires at it' do
    subject.fire column: :A, row: 1
    expect(subject.retrieve column: :A, row: 1).to eq '*'
  end

end
