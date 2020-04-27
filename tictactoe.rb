#a tic tac toe game

arr = [0, 1, 2, 3, 4, 5, 6, 7, 8]
play = true

#if one of these sets of numbers are all equal the game is over
winPatterns = Array[[0,1,2],
                    [0,3,6],
                    [0,4,8],
                    [1,4,7],
                    [2,5,8],
                    [2,4,6],
                    [3,4,5],
                    [6,7,8]]

#method to see if either player has won
def checkWin(winPatterns, arr)
  for i in winPatterns
    if arr[i[0]] == arr[i[1]] && arr[i[0]] ==arr[i[2]]
      return true
    end
  end
  return false
end

#display the current board
def printBoard(arr)
  puts "  " + arr[0].to_s + "  |  " + arr[1].to_s + "  |  " + arr[2].to_s
  puts "-----------------------"
  puts "  " + arr[3].to_s + "  |  " + arr[4].to_s + "  |  " + arr[5].to_s
  puts "-----------------------"
  puts "  " + arr[6].to_s + "  |  " + arr[7].to_s + "  |  " + arr[8].to_s
end

currentPlayer = 'o'
count = 0;
while play
  if currentPlayer == 'x'
    currentPlayer = 'o'
  else
    currentPlayer = 'x'
  end
  printBoard(arr)
  print currentPlayer.to_s + " where would you like to play? (0-8) : "
  spot = gets.chomp.to_i
  while arr[spot]=='x' || arr[spot]=='o'
    print "spot taken, try again: "
    spot = gets.chomp.to_i
  end
  arr[spot] = currentPlayer
  if checkWin(winPatterns, arr)
    play = false
  end
  count += 1
  if count == 9
    currentPlayer = "cat"
    play = false
  end
end

printBoard(arr)
puts "winner is " + currentPlayer #print winner, whoever went last was winner
