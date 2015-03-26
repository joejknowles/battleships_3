require 'capybara/rspec'
require 'board'
require 'ship'

feature 'prepares the board' do
  scenario 'places ship on a board' do
    board = Board.new
    ship = Ship.new
    board.place(column: :A, row: 0, ship: ship)
    expect(board.retrieve(column: :A, row: 0)).to be ship
  end
end
