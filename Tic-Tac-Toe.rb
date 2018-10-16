def players
	puts "Enter the 1st player name:"
	print " > "
	@joueur_1 = gets.chomp

	puts "Enter the 2nd player name:"
	print " > "
	@joueur_2 = gets.chomp
end

def board
	@A1 = " "
	@A2 = " "
	@A3 = " " 
	@B1 = " "
	@B2 = " "
	@B3 = " "
	@C1 = " "
	@C2 = " "
	@C3 = " "

	puts "   \n    1     2     3  \n       |     |     \nA   #{@A1}  |  #{@A2}  |  #{@A3}\n  _____|_____|_____\n       |     |     \nB   #{@B1}  |  #{@B2}  |  #{@B3}\n  _____|_____|_____\n       |     |     \nC   #{@C1}  |  #{@C2}  |  #{@C3}\n       |     |"
	puts ""
end

def win1
	play1
	if @A1 == "X" && @A2 == "X" && @A3 == "X" 
		puts "#{@joueur_1} you win!"
		@turn += 10
		@win_condition = 10 

	elsif @B1 == "X" && @B2 == "X" && @B3 == "X" 
		puts "#{@joueur_1} you win!"
		@turn += 10
		@win_condition = 10 

	elsif @C1 == "X" && @C2 == "X" && @C3 == "X" 
		puts "#{@joueur_1} you win!"
		@turn += 10
		@win_condition = 10 

	elsif @A1 == "X" && @B1== "X" && @C1 == "X" 
		puts "#{@joueur_1} you win!"
		@turn += 10
		@win_condition = 10 

	elsif @A2 == "X" && @B2 == "X" && @C2 == "X" 
		puts "#{@joueur_1} you win!"
		@turn += 10
		@win_condition = 10 

	elsif @A3 == "X" && @B3 == "X" && @C3 == "X" 
		puts "#{@joueur_1} you win!"
		@turn += 10
		@win_condition = 10 

	elsif @A1 == "X" && @B2 == "X" && @C3 == "X" 
		puts "#{@joueur_1} you win!"
		@turn += 10
		@win_condition = 10 

	elsif @A3 == "X" && @B2 == "X" && @C1 == "X" 
		puts "#{@joueur_1} you win!"
		@turn += 10
		@win_condition = 10 
	end
end


def win2
	play2
	if @A1 == "O" && @A2 == "O" && @A3 == "O"
		puts "#{@joueur_2} you win!"
		@turn += 10

	elsif @B1 == "O" && @B2 == "O" && @B3 == "O"
		puts "#{@joueur_2} you win!"
		@turn += 10

	elsif  @C1 == "O" && @C2 == "O" && @C3 == "O"
		puts "#{@joueur_2} you win!"
		@turn += 10

	elsif @A1 == "O" && @B1== "O" && @C1 == "O"
		puts "#{@joueur_2} you win!"
		@turn += 10

	elsif @A2 == "O" && @B2 == "O" && @C2 == "O"
		puts "#{@joueur_2} you win!"
		@turn += 10

	elsif @A3 == "O" && @B3 == "O" && @C3 == "O"
		puts "#{@joueur_2} you win!"
		@turn += 10

	elsif  @A1 == "O" && @B2 == "O" && @C3 == "O"
		puts "#{@joueur_2} you win!"
		@turn += 10

	elsif @A3 == "O" && @B2 == "O" && @C1 == "O"
		puts "#{@joueur_2} you win!"
		@turn += 10
	end
end

def play1
	player_1_turn
end

def play2
	player_2_turn
end

def player_1_turn
	puts "#{@joueur_1} where do you want to put your X?"
	print " > "

	@choix = gets.chomp
	no_cheat_1
end	


def player_2_turn
	puts "#{@joueur_2} where do you want to put your O?"
	print " > "

	@choix2 = gets.chomp
	no_cheat_2
end	

def no_cheat_1
	if @A1 != " " && (@choix == "A1" || @choix == "a1")
		puts "Don't cheat!" 
		player_1_turn
	elsif @A2 != " " && (@choix == "A2" || @choix == "a2")
		puts "Don't cheat!" 
		player_1_turn
	elsif @A3 != " " && (@choix == "A3" || @choix == "a3")
		puts "Don't cheat!" 
		player_1_turn
	elsif @B1 != " " && (@choix == "B1" || @choix == "b1")
		puts "Don't cheat!" 
		player_1_turn
	elsif @B2 != " " && (@choix == "B2" || @choix == "b2")
		puts "Don't cheat!" 
		player_1_turn
	elsif @B3 != " " && (@choix == "B3" || @choix == "b3")
		puts "Don't cheat!" 
		player_1_turn
	elsif @C1 != " " && (@choix == "C1" || @choix == "c1")
		puts "Don't cheat!" 
		player_1_turn
	elsif @C2 != " " && (@choix == "C2" || @choix == "c2")
		puts "Don't cheat!" 
		player_1_turn
    elsif @C3 != " " && (@choix == "C3" || @choix == "c3")
    	puts "Don't cheat!" 
    	player_1_turn
	else
		player_1_choice
	end
end

def no_cheat_2
	if @A1 != " " && (@choix2 == "A1" || @choix2 == "a1")
		puts "Don't cheat!" 
		player_2_turn
	elsif @A2 != " " && (@choix2 == "A2" || @choix2 == "a2")
		puts "Don't cheat!" 
		player_2_turn
	elsif @A3 != " " && (@choix2 == "A3" || @choix2 == "a3")
		puts "Don't cheat!" 
		player_2_turn
	elsif @B1 != " " && (@choix2 == "B1" || @choix2 == "b1")
		puts "Don't cheat!" 
		player_2_turn
	elsif @B2 != " " && (@choix2 == "B2" || @choix2 == "b2")
		puts "Don't cheat!" 
		player_2_turn
	elsif @B3 != " " && (@choix2 == "B3" || @choix2 == "b3")
		puts "Don't cheat!" 
		player_2_turn
	elsif @C1 != " " && (@choix2 == "C1" || @choix2 == "c1")
		puts "Don't cheat!" 
		player_2_turn
	elsif @C2 != " " && (@choix2 == "C2" || @choix2 == "c2")
		puts "Don't cheat!" 
		player_2_turn
    elsif @C3 != " " && (@choix2 == "C3" || @choix2 == "c3")
    	puts "Don't cheat!"
    	player_2_turn
	else
		player_2_choice
	end
end

def player_1_choice 
	if @choix == "A1"|| @choix == "a1"
		@A1 = "X"
	elsif @choix == "A2"|| @choix == "a2"
		@A2 = "X"
	elsif @choix == "A3"|| @choix == "a3"
		@A3 = "X"
	elsif @choix == "B1"|| @choix == "b1"
		@B1 = "X"
	elsif @choix == "B2"|| @choix == "b2"
		@B2 = "X"
	elsif @choix == "B3"|| @choix == "b3"
		@B3 = "X"
	elsif @choix == "C1"|| @choix == "c1"
		@C1 = "X"
	elsif @choix == "C2"|| @choix == "c2"
		@C2 = "X"
	elsif @choix == "C3"|| @choix == "c3"
		@C3 = "X"
	else
		puts "Incorrect input"
		puts ""

		player_1_turn
	end
	puts "   \n    1     2     3  \n       |     |     \nA   #{@A1}  |  #{@A2}  |  #{@A3}\n  _____|_____|_____\n       |     |     \nB   #{@B1}  |  #{@B2}  |  #{@B3}\n  _____|_____|_____\n       |     |     \nC   #{@C1}  |  #{@C2}  |  #{@C3}\n       |     |"
end

def player_2_choice
	if @choix2 == "A1"|| @choix2 == "a1"
		@A1 = "O"
	elsif @choix2 == "A2"|| @choix2 == "a2"
		@A2 = "O"
	elsif @choix2 == "A3"|| @choix2 == "a3"
		@A3 = "O"
	elsif @choix2 == "B1"|| @choix2 == "b1"
		@B1 = "O"
	elsif @choix2 == "B2"|| @choix2 == "b2"
		@B2 = "O"
	elsif @choix2 == "B3"|| @choix2 == "b3"
		@B3 = "O"
	elsif @choix2 == "C1"|| @choix2 == "c1"
		@C1 = "O"
	elsif @choix2 == "C2"|| @choix2 == "c2"
		@C2 = "O"
	elsif @choix2 == "C3"|| @choix2 == "c3"
		@C3 = "O"
	else
		puts "Incorrect input"
		puts ""

		player_2_turn
	end
	puts "   \n    1     2     3  \n       |     |     \nA   #{@A1}  |  #{@A2}  |  #{@A3}\n  _____|_____|_____\n       |     |     \nB   #{@B1}  |  #{@B2}  |  #{@B3}\n  _____|_____|_____\n       |     |     \nC   #{@C1}  |  #{@C2}  |  #{@C3}\n       |     |"
end

def perform
	players
	board

	@turn = 1
	@win_condition = 0

  	while @turn < 9
    	win1

    	if @win_condition != 10
     		win2
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

perform