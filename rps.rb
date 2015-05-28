CHOICES = ["Rock", "Paper", "Scissors"]

loop do
  puts "Select your weapon choose a number: 0) Rock, 1) Paper, or 2) Scissors?"

# Player choice loop

  number = gets.chomp
  player_choice = CHOICES[number.to_i]

  # Computer choice loop

  computer_choice = CHOICES[rand(0..2)]

  case
  when player_choice == "Rock" && computer_choice == "Scissors"
    puts "Player 1 chose #{player_choice} Computer chose #{computer_choice}"
    puts "Player 1 wins!!"
  when player_choice == "Paper" && computer_choice == "Rock"
    puts "Player 1 chose #{player_choice} Computer chose #{computer_choice}"
    puts "Player 1 wins!!"
  when player_choice == "Scissors" && computer_choice == "Paper"
    puts "Player 1 chose #{player_choice} Computer chose #{computer_choice}"
    puts "Player 1 wins!!"
  when player_choice == computer_choice
    puts "Player 1 chose #{player_choice} Computer chose #{computer_choice}"
    puts "The Game is a Tie"
  else
    puts "Player 1 chose #{player_choice} Computer chose #{computer_choice}"
    puts "The Computer Wins :( "
  end

  puts "Play again? select (y/n)"
  answer = gets.chomp
  break if answer != "y"
  puts "New Round!"
end
