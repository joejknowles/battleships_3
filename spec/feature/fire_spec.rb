require 'capybara/rspec'
require 'board'

feature 'can fire at the board' do
  scenario 'fires at the board' do
    board = Board.new
    board.fire column: :A, row: 1
    expect(board.retrieve column: :A, row: 1).to eq '*'
  end
end
