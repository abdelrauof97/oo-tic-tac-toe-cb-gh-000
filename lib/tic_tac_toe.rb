class TicTacToe
  def initialize(board = nil)
    @board=board || Array.new(9, " ")
  end 
  
  WIN_COMBINATIONS = [ [0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,7] ]
  
  def display_board
    @board 
  end
  
  def input_to_index
    @index = "#{user_input}".to_i - 1
  end
    
  def move(board, index, player)
    board[index] = player
  end 
  
  def position_taken?
    !(@board[@index] == " " || @board[@index] == "" || @board[@index] == nil )
  end 
  
  def valid_move?
    @index.between(1, 9) && !position_taken?
  end
  
  def turn 
    puts "take a position between {1-9)"
    user_input = gets.strip
    index = input_to_index(user_input)
    if valid_move?
      move(@board, @index, current_player)
    else 
      puts "invalid!, please input again(1- 9)"
      turn 
    end
  end
    
  def turn_count 
    @board.count{ |x| x != " " || x != "" || x != nil }
  end
  
  def current_player 
    turn_count % == 2 X ? O
    
    
  
    
end