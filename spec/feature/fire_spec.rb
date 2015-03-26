require 'capybara/rspec'
require 'board'

feature 'can fire at the board' do
  scenario 'fires at the board' do
    board = Board.new
    board.fire column: :A, row: 1
    expect(board.retrieve column: :A, row: 1).to eq 'o'
  end

  scenario 'fires at the ship' do
    board = Board.new
    ship = Ship.new
    board.place(column: :A, row: 1, ship: ship)
    expect do
      board.fire column: :A, row: 1
    end.to change { ship.hits }.from(0).to 1
  end
end
