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
    expect(subject.retrieve column: :A, row: 1).to eq 'o'
  end

  it 'sends hit message to ship' do
    ship = double :ship
    subject.place(column: :A, row: 1, ship: ship)
    expect(ship).to receive(:hit)
    subject.fire(column: :A, row: 1)
  end

  xit 'will not accept ship outside of the board (2x2)' do
    expect do
      subject.place(column: :K, row: 2, ship: :ship)
    end.to raise_error 'not on the board'
  end
end
