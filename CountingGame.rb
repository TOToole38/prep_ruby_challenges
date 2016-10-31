# 10 friends in a circle count from 1-100 
# Catch 1: when number is divisible by 7, switch directions 
# Catch 2: when number is divisble by 11, skip next person 


def countingGame(totalPlayers, targetNumber)
	
	player = 1
	normalRotation = true 

	# Find next player based on direction, current player, total # of players, and current number
	def rotatePlayer(normalRotation, currentPlayer, totalPlayers, numberNeeded)
		
		#CHECK DIRECTION
		if normalRotation == true

			# DIVISIBLE BY 11? SKIP
			if numberNeeded % 11 == 0 
				if currentPlayer == totalPlayers - 1
					nextPlayer = 1
				elsif currentPlayer == totalPlayers
					nextPlayer = 2
				else
					nextPlayer = currentPlayer + 2 
				end

			# NOT DIVISBLE BY 11
			else 
				if currentPlayer == totalPlayers 
					nextPlayer = 1
				else
					nextPlayer = currentPlayer + 1
				end
			end

		# CHANGE DIRECTION
		else 

			#DIVISIBLE BY 11? SKIP 
			if numberNeeded % 11 == 0 
				if currentPlayer == 1
					nextPlayer = totalPlayers - 1					
				elsif currentPlayer == 2
					nextPlayer = totalPlayers
				else
					nextPlayer = currentPlayer - 2
				end
			
			#NOT DIVISBLE BY 11 
			else
				if currentPlayer == 1
					nextPlayer = totalPlayers
				else 
					nextPlayer = currentPlayer - 1
				end
			end
		end

		return nextPlayer
	end


	(1..targetNumber).each do |number|
		puts "Player #{player} said the number #{number}"

		#CHECK FOR CHANGE IN DIRECTION 
		if number % 7 == 0 
			normalRotation = !normalRotation
		end

		player = rotatePlayer(normalRotation, player, totalPlayers, number)
	end 

end


# TEST: 
countingGame(10, 100)



