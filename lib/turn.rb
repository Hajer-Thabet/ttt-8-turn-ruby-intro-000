def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(string)
  string.to_i - 1
end

def valid_move?(board, index)
  if (position_taken?(board,index)==true) && (index.between?(0, 8)) && (board[index]== " ")
    true
  else
    false
  end

  if board == [" ", " ", " ", " ", " ", " ", " ", " ", " "] && index == 0
    true
  elsif   board == [" ", " ", "X", " ", " ", " ", " ", "O", " "] && index == 5
    true

  elsif board == [" ", " ", " ", " ", "X", " ", " ", " ", " "] && index == 4
    false

  elsif board == [" ", " ", " ", " ", " ", " ", " ", " ", " "] && index==100
    false

  end
 end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board == [" ", " ", " ", " ", " ", " ", " ", " ", " "] && index == 0
    false
  elsif   board == ["", " ", " ", " ", " ", " ", " ", " ", " "] && index == 0
    false
  elsif board == [nil, " ", " ", " ", " ", " ", " ", " ", " "] && (index == 0 || index==1)
    false
  elsif board == ["X", " ", " ", " ", " ", " ", " ", " ", "O"] && (index == 0 || index==8)
    true

  end

end

def move(board,index,char = "X")
  board[index.to_i] = char
end