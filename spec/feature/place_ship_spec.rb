require 'capybara/rspec'
require 'board'
require 'ship'

feature 'prepares the board' do

  let(:board) { Board.new }
  let(:ship) { Ship.new }

  scenario 'places ship on a board' do
    board.place(column: :A, row: 0, ship: ship)
    expect(board.retrieve(column: :A, row: 0)).to be ship
  end
  scenario 'ship only at placed location' do
    board.place(column: :A, row: 0, ship: ship)
    expect(board.retrieve(column: :A, row: 1)).not_to be ship
  end

  xscenario 'ship cannot be placed outside of the board (2x2)' do
    expect do
      board.place(column: :K, row: 2, ship: ship)
    end.to raise_error 'not on the board'
  end
end
