module Displayable
  def clear_screen
    system('clear') || system('cls')
  end

  def display_start_message
    clear_screen
    puts "Welcome to Twenty One."
    puts "Hope you're feeling lucky! Your opponent will be #{dealer.name}."
  end

  def display_winner(winner)
    puts " "
    puts '+-------------------------------------------------------+'
    puts winner
  end

  def display_goodbye_message
    puts "Goodbye #{human.name}, thanks for playing!"
  end
end

module Hand
  def add_new_card(new_card)
    hand << new_card
  end

  def display_cards_and_total
    puts "#{name} has: "
    hand.each { |card| puts card }
    show_total
  end

  def total
    total = 0
    hand.each do |card|
      total += if card.ace?
                 11
               elsif card.jack? || card.queen? || card.king?
                 10
               else
                 card.face_value.to_i
               end
    end

    hand.select(&:ace?).count.times do
      break if total <= 21
      total -= 10
    end

    total
  end

  def show_total
    puts "Card Total: #{total}"
    puts " "
  end

  def busted?
    total > 21
  end
end

class Card
  attr_reader :suit, :face_value

  SUITS = ['Hearts', 'Diamonds', 'Spades', 'Clubs'].freeze
  VALUES = ['2', '3', '4', '5', '6', '7', '8', '9',
            '10', 'J', 'Q', 'K', 'A'].freeze

  def initialize(suit, face_value)
    @suit = suit
    @face_value = face_value
  end

  def to_s
    "#{face_value} of #{suit}"
  end

  def ace?
    face_value == "A"
  end

  def jack?
    face_value == 'J'
  end

  def queen?
    face_value == 'Q'
  end

  def king?
    face_value == 'K'
  end
end

class Deck
  attr_accessor :cards

  def initialize
    reset
  end

  def deal_card
    @cards.pop
  end

  def reset
    @cards = []
    Card::SUITS.each do |suit|
      Card::VALUES.each do |face_value|
        @cards << Card.new(suit, face_value)
      end
    end
    @cards.shuffle!
  end
end

class Player
  attr_accessor :name, :hand
  include Hand

  def initialize
    set_name
    @hand = []
  end
end

class Human < Player
  def set_name
    name = ''
    puts "What's your name?"
    loop do
      name = gets.chomp
      break unless name.strip.empty?
      puts "Please enter your name. It cannot be blank."
    end
    self.name = name
  end

  def show_cards
    display_cards_and_total
  end

  def hit_or_stay
    answer = nil
    puts "Would you like to (h)it or (s)stay?"
    loop do
      answer = gets.chomp.downcase
      break if ['h', 's'].include?(answer)
      puts "Please enter only 'h' or 's' "
    end
    answer
  end
end

class Dealer < Player
  COMPUTER_NAMES = ['C3P0', 'Mr. Robot', 'Siri'].freeze

  def set_name
    self.name = COMPUTER_NAMES.sample
  end

  def show_cards
    puts "#{name} has: "
    puts hand[0]
    puts " "
  end
end

class Game
  include Displayable
  include Hand

  attr_accessor :human, :dealer, :deck

  def initialize
    @deck = Deck.new
  end

  def deal_cards
    2.times do
      human.add_new_card(deck.deal_card)
      dealer.add_new_card(deck.deal_card)
    end
  end

  def show_cards
    dealer.show_cards
    human.show_cards
  end

  def player_turn
    loop do
      if human.hit_or_stay == 's'
        puts "You have chosen to stay. It is now the dealers' turn"
        break
      else
        human.add_new_card(deck.deal_card)
        clear_screen
        show_cards
      end

      if human.busted?
        break
      end
    end
  end

  def dealer_turn
    loop do
      if dealer.total >= 17 && !dealer.busted?
        break
      elsif dealer.busted?
        break
      else
        puts " "
        puts "Dealer Hits..."
        sleep 2
        dealer.add_new_card(deck.deal_card)
      end
    end
  end

  def compare_totals
    if human.total > dealer.total
      "#{human.name} wins with a higher score!"
    elsif dealer.total > human.total
      "#{dealer.name} wins with a higher score!"
    else
      "Tie Game"
    end
  end

  def determine_winner
    if human.busted?
      "Busted!!! #{dealer.name} Wins"
    elsif dealer.busted?
      "#{dealer.name} busts! You win"
    else
      "Both players have chosen to stay. #{compare_totals}"
    end
  end

  def play_again?
    answer = nil
    puts "Would you like to play another hand? (y/n)"
    loop do
      answer = gets.chomp.downcase
      break if ['y', 'n'].include? answer
      puts "Please enter only y or n"
    end
    answer == 'y' ? true : false
  end

  def setup_game
    @dealer = Dealer.new
    display_start_message
    @human = Human.new
  end

  def game_reset
    human.hand = []
    dealer.hand = []
    deck.reset
  end

  def play_hand
    deal_cards
    clear_screen
    show_cards
    player_turn
    dealer_turn if !human.busted?
    clear_screen
    human.display_cards_and_total
    dealer.display_cards_and_total
    display_winner(determine_winner)
  end

  def start
    setup_game

    loop do
      play_hand
      break unless play_again?
      game_reset
    end
    display_goodbye_message
  end
end

twenty_one = Game.new
twenty_one.start
