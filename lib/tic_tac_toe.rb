class TicTacToe
  def initialize(board = nil)
    @board=board || Array.new(9, " ")
  end 
  WIN_COMBINATIONS = [ [0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,7] ]
  def display_board
    @board 
  end
  
  def input_to_index
    user_input = gets.strip
    user_input
    
    
end