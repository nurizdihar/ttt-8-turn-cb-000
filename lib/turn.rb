def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if !position_taken?(board, index) && 0 <= index && 8 >= index
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  elsif board[index] == "" || board[index] == " " || board[index] == "nil"
    return false
  end
end

def move(board, index, char = "X")
  board[index] = char
end

def input_to_index(input)
  number = input.to_i
  index = number - 1
  return index
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, char = "X")
    display_board(board)
  else
    until valid_move?(board, index) == true
      turn(board)
    end
  end
end
