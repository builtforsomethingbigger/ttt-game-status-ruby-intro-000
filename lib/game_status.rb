# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], [3,4,5], [6,7,8], [0,4,8], [0,3,6], [1,4,7], [2,4,6], [2,5,8]
]

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def won?(board)
 WIN_COMBINATIONS.each do |win_combination|
   win_index_1 = win_combination[0]
   win_index_2 = win_combination[1]
   win_index_3 = win_combination[2]
   win_index_4 = win_combination[3]
   win_index_5 = win_combination[4]
   win_index_6 = win_combination[5]
   win_index_7 = win_combination[6]
   win_index_8 = win_combination[7]
   position_1 = board[win_index_1]
   position_2 = board[win_index_2]
   position_3 = board[win_index_3]
   position_4 = board[win_index_4]
   position_5 = board[win_index_5]
   position_6 = board[win_index_6]
   position_7 = board[win_index_7]
   position_8 = board[win_index_8]
   if position_taken?(board, win_index_1) && position_taken?(board, win_index_2) && position_taken?(board, win_index_3) && position_taken?(board, win_index_4) && position_taken?(board, win_index_5) && position_taken?(board, win_index_6) && position_taken?(board, win_index_7) && position_taken?(board, win_index_8)
    puts "You won!"
   else
    false
   end
 end
end


def full?(board)
   board.all? {|i| i == "X" || i == "O"}
end

def draw?(board)
   if !won?(board) && full?(board)
     return true
   elsif !won?(board) && !full?(board)
     return false
   else won?(board)
     return false
   end
end

def over?(board)
   if draw?(board) || won?(board) || full?(board)
     return true
   end
end

def winner(board)
   if won?(board)
      return board[won?(board)[0]]
   end
end
