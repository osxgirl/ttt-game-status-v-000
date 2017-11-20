# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], 
  [3,4,5], 
  [6,7,8], 
  [0,3,6],
  [1,4,7], 
  [2,5,8], 
  [0,4,8], 
  [2,4,6]  
]
def position_taken?(board, index)
 !(board[index] == " " || board[index] == "" || board[index] == nil)
end

def won?(array)
  WIN_COMBINATIONS.each do |winner_set|
    if array[winner_set[0]] == array[winner_set[1]] &&
       array[winner_set[1]] == array[winner_set[2]] &&
       position_taken?(array, winner_set[0])
       puts "there's a winner!"
       return true 
       return winner_set
    end
  end
end

puts won?(board)

def full?(array)
 if !(array.any?{|i| i == " "})
   puts "the board is full!"
   return true
 else 
   puts "the board is not yet full"
   return false
 end 
end 
