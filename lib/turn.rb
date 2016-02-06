def turn(board)
  
  token = 'X'
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position) == true
    move(board, position, token)
    display_board(board)
  else
    turn(board)
  end
end
# *************************************************************************
def display_board (board)
  
  cell = "   ";
  pipe = "|";
  row = "-----------";
  puts " #{board[0]} " + pipe + " #{board[1]} " + pipe + " #{board[2]} "
  puts row
  puts " #{board[3]} " + pipe + " #{board[4]} " + pipe + " #{board[5]} "
  puts row
  puts " #{board[6]} " + pipe + " #{board[7]} " + pipe + " #{board[8]} "
end
# ************************************************************************
def valid_move?(board, position)
  position = position.to_i
  position = position - 1
 
  if position_taken?(board, position) || !(position.between?(0, 8))
    false
  else
    true
  end
end  
# ***************************************************************
def position_taken?(board, position)
  
  if board[position] == " "
    false
  elsif board[position] == ""
    false
  elsif board[position] == nil
    false
  else board[position] == "X" || board[position] == "O"
    true
  end
end
# *******************************************************************
def move(board, position, token)
  
  position = position.to_i
  board[position - 1] = token
  display_board(board)
end
    
  

