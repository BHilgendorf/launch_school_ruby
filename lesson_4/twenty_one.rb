def clear_screen
  system('clear') || system('cls')
end

def initialize_deck(deck)
  deck = { hearts_ace: 11, diamonds_ace: 11, spades_ace: 11, clubs_ace: 11,
           hearts_2: 2, diamonds_2: 2, spades_2: 2, clubs_2: 2,
           hearts_3: 3, diamonds_3: 3, spades_3: 3, clubs_3: 3,
           hearts_4: 4, diamonds_4: 4, spades_4: 4, clubs_4: 4,
           hearts_5: 5, diamonds_5: 5, spades_5: 5, clubs_5: 5,
           hearts_6: 6, diamonds_6: 6, spades_6: 6, clubs_6: 6,
           hearts_7: 7, diamonds_7: 7, spades_7: 7, clubs_7: 7,
           hearts_8: 8, diamonds_8: 8, spades_8: 8, clubs_8: 8,
           hearts_9: 9, diamonds_9: 9, spades_9: 9, clubs_9: 9,
           hearts_10: 10, diamonds_10: 10, spades_10: 10, clubs_10: 10,
           hearts_J: 10, diamonds_J: 10, spades_J: 10, clubs_J: 10,
           hearts_Q: 10, diamonds_Q: 10, spades_Q: 10, clubs_Q: 10,
           hearts_K: 10, diamonds_K: 10, spades_K: 10, clubs_K: 10 }
  deck
end

def deal_card(deck, hand)
  card = deck.keys.sample
  hand[card] = deck[card]
  deck.delete(card)
end

def calculate_total(hand)
  total = hand.values.inject(:+)
  hand.select { |value| value == 11 }.count.times do
    total -= 10 if total > 21
  end
  total
end

def display_hands(player_hand, player_total, dealer_hand, dealer_total)
  puts "Dealer has: #{dealer_hand}"
  puts "Dealer as a score of: #{dealer_total}"
  puts "--------------------------------------------------"
  puts "Player has: #{player_hand}"
  puts "Player has a score of: #{player_total}"
end

def hit_or_stay(player_choice)
  puts "\nPress 'H' to Hit or 'S' to stay"
  loop do
    player_choice = gets.chomp.downcase
    break if player_choice == 's' ||
             player_choice == 'h' ||
             busted?(player_total)
    puts "Please choose only 'h' or 's'"
  end
  player_choice
end

def busted?(total)
  total > 21
end

def winner?(player_total, dealer_total)
  if player_total == 21 ||
     busted?(dealer_total) ||
     player_total < 21 && (player_total > dealer_total)
    winner = "You are the winner of this hand."
  elsif player_total == dealer_total
    winner = "It is a tie"
  else
    winner = "The Dealer is the winner of this hand"
  end
  winner
end

def another_hand?
  play_again = nil
  puts "Press Y to play again or N to quit"
  loop do
    play_again = gets.chomp.downcase
    break if play_again == 'y' || play_again == 'n'
    puts "Please enter only Y or N"
  end
  play_again == 'y' ? true : false
end

loop do
  deck = {}
  player_hand = {}
  dealer_hand = {}

  clear_screen
  deck = initialize_deck(deck)
  2.times do
    deal_card(deck, player_hand)
    deal_card(deck, dealer_hand)
  end

  player_total = calculate_total(player_hand)
  dealer_total = calculate_total(dealer_hand)
  display_hands(player_hand, player_total,
                dealer_hand.first, dealer_hand.first[1])

  loop do
    player_choice = hit_or_stay(player_choice)
    break if player_choice.downcase == 's'
    deal_card(deck, player_hand)
    player_total = calculate_total(player_hand)
    break if busted?(player_total)
    clear_screen
    display_hands(player_hand, player_total,
                  dealer_hand.first, dealer_hand.first[1])
  end

  clear_screen
  display_hands(player_hand, player_total, dealer_hand, dealer_total)

  if busted?(player_total)
    puts "\nYou have busted. Dealer wins this hand."
  else
    puts "\nPlayer has chosen to 'stay'. It is now the dealer's turn"
    if dealer_total > 17 && dealer_total < 21
      winner = winner?(player_total, dealer_total)
      puts "\nDealer has chosen to 'stay' and #{winner}!"
    else
      loop do
        puts "Press any key to give the dealer the next card"
        gets
        clear_screen
        deal_card(deck, dealer_hand)
        dealer_total = calculate_total(dealer_hand)
        display_hands(player_hand, player_total, dealer_hand, dealer_total)
        break if dealer_total >= 17 || busted?(dealer_total)
      end
      puts "\n#{winner?(player_total, dealer_total)}"
    end
  end

  puts "\nWould you like to play another hand?"
  break if !another_hand?
end
