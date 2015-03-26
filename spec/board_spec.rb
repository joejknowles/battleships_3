require 'board'

describe Board do
  it { is_expected.to respond_to(:place).with(1).argument }
  it { is_expected.to respond_to(:retrieve).with(1).argument }
  it 'places a ship' do
    expect(subject.place(ship: :ship)).to be :ship
  end
  it 'retrieves a ship' do
    ship = double :ship
    subject.place(ship: ship)
    expect(subject.retrieve('gello')).to be ship
  end
end
