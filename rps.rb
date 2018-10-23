# returns either "rock", "paper", or "scissors" using rand()
def comp_choose_rps
	rand_num = rand(0..2)
	case rand_num
	when 0
	    "rock"
	when 1
	    "paper"
	when 2
	    "scissors"
	end 
end
comp_choose_rps

# returns either "rock", "paper", or "scissors" using gets.chomp
def user_choose_rps
	puts "Enter rock, paper or scissors:"
  user = gets.chomp
  user
end

# returns either "It was a tie!", "You win!", or "The computer wins!"
def get_winner(comp,user)
	if comp == user
		"It was a tie!"
	elsif comp == "rock" && user == "paper"
		"You win!"
	elsif comp == "rock" && user == "scissors"
		"The computer wins!"
	elsif comp =="paper" && user == "rock"
		"The computer wins!"
	elsif comp == "paper" && user == "scissors"
		"You win!"
	elsif comp == "scissors" && user == "rock"
		"You win!"
	elsif comp == "scissors" && user == "paper"
	"The computer wins!"
	end
end

# puts "The computer chose ____" followed by "You chose ____" followed by the result of #get_winner
def play_game
get_winner(comp_choose_rps,user_choose_rps)	
end

puts play_game