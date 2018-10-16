class Player
	attr_accessor :player_1, :player_2
	
	def initialize(player_1, player_2)
		@player_1 = player_1
		@player_2 = player_2
		puts "test1"
	end
end

class Board
	attr_accessor :A1, :A2, :A3, :B1, :B2, :B3, :C1, :C2, :C3

	def initialize
		@A1 = @A2 = @A3 = @B1 = @B2 = @B3 = @C1 = @C2 = @C3 = " "

		puts "   \n    1     2     3  \n       |     |     \nA   #{@A1}  |  #{@A2}  |  #{@A3}\n  _____|_____|_____\n       |     |     \nB   #{@B1}  |  #{@B2}  |  #{@B3}\n  _____|_____|_____\n       |     |     \nC   #{@C1}  |  #{@C2}  |  #{@C3}\n       |     |" 
		puts "test2"

		Board_case.new.perform
	end
end

class Board_case
	
	def win1
		Board_case.new.play1
		if @A1 == "X" && @A2 == "X" && @A3 == "X" 
			puts "#{@player_1} you win!"
			@turn += 10
			@win_condition = 10 

		elsif @B1 == "X" && @B2 == "X" && @B3 == "X" 
			puts "#{@player_1} you win!"
			@turn += 10
			@win_condition = 10 

		elsif @C1 == "X" && @C2 == "X" && @C3 == "X" 
			puts "#{@player_1} you win!"
			@turn += 10
			@win_condition = 10 

		elsif @A1 == "X" && @B1== "X" && @C1 == "X" 
			puts "#{@player_1} you win!"
			@turn += 10
			@win_condition = 10 

		elsif @A2 == "X" && @B2 == "X" && @C2 == "X" 
			puts "#{@player_1} you win!"
			@turn += 10
			@win_condition = 10 

		elsif @A3 == "X" && @B3 == "X" && @C3 == "X" 
			puts "#{@player_1} you win!"
			@turn += 10
			@win_condition = 10 

		elsif @A1 == "X" && @B2 == "X" && @C3 == "X" 
			puts "#{@player_1} you win!"
			@turn += 10
			@win_condition = 10 

		elsif @A3 == "X" && @B2 == "X" && @C1 == "X" 
			puts "#{@player_1} you win!"
			@turn += 10
			@win_condition = 10
		end
	end


	def win2
		Board_case.new.play2
		if @A1 == "O" && @A2 == "O" && @A3 == "O"
			puts "#{@player_2} you win!"
			@turn += 10

		elsif @B1 == "O" && @B2 == "O" && @B3 == "O"
			puts "#{@player_2} you win!"
			@turn += 10

		elsif  @C1 == "O" && @C2 == "O" && @C3 == "O"
			puts "#{@player_2} you win!"
			@turn += 10

		elsif @A1 == "O" && @B1== "O" && @C1 == "O"
			puts "#{@player_2} you win!"
			@turn += 10

		elsif @A2 == "O" && @B2 == "O" && @C2 == "O"
			puts "#{@player_2} you win!"
			@turn += 10

		elsif @A3 == "O" && @B3 == "O" && @C3 == "O"
			puts "#{@player_2} you win!"
			@turn += 10

		elsif  @A1 == "O" && @B2 == "O" && @C3 == "O"
			puts "#{@player_2} you win!"
			@turn += 10

		elsif @A3 == "O" && @B2 == "O" && @C1 == "O"
			puts "#{@player_2} you win!"
			@turn += 10
		end
	end

	def play1
		Board_case.new.player_1_turn
	end

	def play2
		Board_case.new.player_2_turn
	end

	def player_1_turn
		puts "#{@player_1} where do you want to put your X?"
		print " > "

		@choice = gets.chomp
		Board_case.new.no_cheat_1
	end	


	def player_2_turn
		puts "#{@player_2} where do you want to put your O?"
		print " > "

		@choice2 = gets.chomp
		Board_case.new.no_cheat_2
	end	

	def no_cheat_1
		if @A1 != " " && @choice == "A1"
			puts "Don't cheat!" 
			player_1_turn
		elsif @A2 != " " && @choice == "A2"
			puts "Don't cheat!" 
			player_1_turn
		elsif @A3 != " " && @choice == "A3"
			puts "Don't cheat!" 
			player_1_turn
		elsif @B1 != " " && @choice == "B1"
			puts "Don't cheat!" 
			player_1_turn
		elsif @B2 != " " && @choice == "B2"
			puts "Don't cheat!" 
			player_1_turn
		elsif @B3 != " " && @choice == "B3"
			puts "Don't cheat!" 
			player_1_turn
		elsif @C1 != " " && @choice == "C1"
			puts "Don't cheat!" 
			player_1_turn
		elsif @C2 != " " && @choice == "C2"
			puts "Don't cheat!" 
			player_1_turn
	    elsif @C3 != " " && @choice == "C3"
	    	puts "Don't cheat!" 
	    	Board_case.new.player_1_turn
		else
			Board_case.new.player_1_choice
		end
	end

	def no_cheat_2
		if @A1 != " " && @choice2 == "A1"
			puts "Don't cheat!" 
			player_2_turn
		elsif @A2 != " " && @choice2 == "A2"
			puts "Don't cheat!" 
			player_2_turn
		elsif @A3 != " " && @choice2 == "A3"
			puts "Don't cheat!" 
			player_2_turn
		elsif @B1 != " " && @choice2 == "B1"
			puts "Don't cheat!" 
			player_2_turn
		elsif @B2 != " " && @choice2 == "B2"
			puts "Don't cheat!" 
			player_2_turn
		elsif @B3 != " " && @choice2 == "B3"
			puts "Don't cheat!" 
			player_2_turn
		elsif @C1 != " " && @choice2 == "C1"
			puts "Don't cheat!" 
			player_2_turn
		elsif @C2 != " " && @choice2 == "C2"
			puts "Don't cheat!" 
			player_2_turn
	    elsif @C3 != " " && @choice2 == "C3"
	    	puts "Don't cheat!"
	    	Board_case.new.player_2_turn
		else
			Board_case.new.player_2_choice
		end
	end

	def player_1_choice 
		if @choice == "A1"|| @choice == "a1"
			@A1 = "X"
		elsif @choice == "A2"|| @choice == "a2"
			@A2 = "X"
		elsif @choice == "A3"|| @choice == "a3"
			@A3 = "X"
		elsif @choice == "B1"|| @choice == "b1"
			@B1 = "X"
		elsif @choice == "B2"|| @choice == "b2"
			@B2 = "X"
		elsif @choice == "B3"|| @choice == "b3"
			@B3 = "X"
		elsif @choice == "C1"|| @choice == "c1"
			@C1 = "X"
		elsif @choice == "C2"|| @choice == "c2"
			@C2 = "X"
		elsif @choice == "C3"|| @choice == "c3"
			@C3 = "X"
		else
			puts "Incorrect input"
			puts ""

			Board_case.new.player_1_turn
		end
		puts "   \n    1     2     3  \n       |     |     \nA   #{@A1}  |  #{@A2}  |  #{@A3}\n  _____|_____|_____\n       |     |     \nB   #{@B1}  |  #{@B2}  |  #{@B3}\n  _____|_____|_____\n       |     |     \nC   #{@C1}  |  #{@C2}  |  #{@C3}\n       |     |"
	end

	def player_2_choice
		if @choice2 == "A1"|| @choice2 == "a1"
			@A1 = "O"
		elsif @choice2 == "A2"|| @choice2 == "a2"
			@A2 = "O"
		elsif @choice2 == "A3"|| @choice2 == "a3"
			@A3 = "O"
		elsif @choice2 == "B1"|| @choice2 == "b1"
			@B1 = "O"
		elsif @choice2 == "B2"|| @choice2 == "b2"
			@B2 = "O"
		elsif @choice2 == "B3"|| @choice2 == "b3"
			@B3 = "O"
		elsif @choice2 == "C1"|| @choice2 == "c1"
			@C1 = "O"
		elsif @choice2 == "C2"|| @choice2 == "c2"
			@C2 = "O"
		elsif @choice2 == "C3"|| @choice2 == "c3"
			@C3 = "O"
		else
			puts "Incorrect input"
			puts ""

			Board_case.new.player_2_turn
		end
		puts "   \n    1     2     3  \n       |     |     \nA   #{@A1}  |  #{@A2}  |  #{@A3}\n  _____|_____|_____\n       |     |     \nB   #{@B1}  |  #{@B2}  |  #{@B3}\n  _____|_____|_____\n       |     |     \nC   #{@C1}  |  #{@C2}  |  #{@C3}\n       |     |"
	end

	def perform
		# players
		# board

		@turn = 1
		@win_condition = 0

	  	while @turn < 9
	    	Board_case.new.win1

	    	if @win_condition != 10
	     		Board_case.new.win2
	    	end

	    	# puts "Do you want to play again? (Enter yes to continue)"
	    	# print " > "
	    	# input = gets.chomp

	    	# if input == "yes"
	    	# 	perform
	    	# else
	    	# 	return 
	    	# end
	  	end
	end
end

class Game
	def go
		puts "Enter the 1st player name :"
		print " > "
		player_1 = gets.chomp

		puts "Enter the 2nd player name :"
		print " > "
		player_2 = gets.chomp

		player = Player.new("#{player_1}","#{player_2}")
		board = Board.new
	end
end


Game.new.go


#============================================================================================
# note :

# $variable : peut etre utilisé entre les inter classes (cest a dire nimporte ou) 


#============================================================================================









# perform