class Card
  attr_reader :rank, :suit
  VALUES = {'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14 }


  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def rank_value
    VALUES.fetch(@rank, @rank)
  end

  def <=>(other_card)
   rank_value <=> other_card.rank_value
  end

  def to_s
    "#{@rank} of #{@suit}"
  end
end

class Deck

  RANKS = (2..10).to_a + %w(Jack Queen King Ace).freeze
  SUITS = %W(Hearts Clubs Diamonds Spades).freeze

  def initialize
    create_deck
  end

  def draw
    create_deck if @deck.empty?
    @deck.pop
  end

  private
  def create_deck
    @deck = RANKS.product(SUITS).map do |rank, suit|
      Card.new(rank, suit)
    end

    @deck.shuffle!
  end
end

class PokerHand
  attr_reader :hand, :rank_value_count
  def initialize(deck)
    @hand = []
    @rank_value_count = Hash.new(0)

    5.times do 
      card = deck.draw
      @hand << card
      @rank_value_count[card.rank_value] += 1
    end
  end

  def print
    hand.each {|card| puts card}
  end

  def evaluate
    # binding.pry
    case
    when royal_flush?     then 'Royal Flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full House'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two Pair'
    when pair?            then 'Pair'
    else                       'High Card'
    end
  end

  private

  def royal_flush?
    straight? && flush? && hand.min.rank_value == 10
  end

  def straight_flush?
    straight? && flush?
  end

  def four_of_a_kind?
    n_of_a_kind?(4).keys.count == 1
  end

  def full_house?
    three_of_a_kind? && pair?
  end

  def flush?
    hand.all? {|card| card.suit == hand.first.suit}
  end

  def straight?
    return false if rank_value_count.any? {|_, count| count > 1}

    hand.min.rank_value == hand.max.rank_value - 4
  end

  def three_of_a_kind?
    n_of_a_kind?(3).keys.count == 1
  end

  def two_pair?
    n_of_a_kind?(2).keys.count == 2
  end

  def pair?
    n_of_a_kind?(2).keys.count == 1
  end

  def n_of_a_kind?(number)
   rank_value_count.select { |_, count| count == number}
  end
end

hand = PokerHand.new(Deck.new)
hand.print
puts " "
puts hand.evaluate

class Array
  alias_method :draw, :pop
end
 #ROYAL FLUSH --------------------------------------
hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
  ])
puts hand.evaluate

# STRAIGHT FLUSH--------------------------------------

hand = PokerHand.new ([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
  ])
puts hand.evaluate

# FOUR OF A KIND -----------------------------------
hand = PokerHand.new([
  Card.new(3,  'Hearts'),
  Card.new(3,  'Clubs'),
  Card.new(5,  'Diamonds'),
  Card.new(3,  'Spades'),
  Card.new(3,  'Diamonds')
  ])

puts hand.evaluate

# FULL HOUSE ---------------------------------------
hand = PokerHand.new([
  Card.new(3,   'Hearts'),
  Card.new(3,   'Clubs'),
  Card.new(5,   'Diamonds'),
  Card.new(3,   'Spades'),
  Card.new(5,   'Hearts')])

puts hand.evaluate

 # FLUSH --------------------------------------------
hand = PokerHand.new([
  Card.new(10,     'Hearts'),
  Card.new('Ace',  'Hearts'),
  Card.new(2,      'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3,      'Hearts')
  ])
puts hand.evaluate

# STRAIGHT-------------------------------------------
hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
  ])
puts hand.evaluate


# THREE OF A KIND ---------------------------------
hand = PokerHand.new([
  Card.new(3,   'Hearts'),
  Card.new(3,   'Clubs'),
  Card.new(5,   'Diamonds'),
  Card.new(3,   'Spades'),
  Card.new(6,   'Diamonds')
  ])
puts hand.evaluate

# TWO PAIR ---------------------------------------
hand = PokerHand.new([
  Card.new(9,   'Hearts'),
  Card.new(9,   'Clubs'),
  Card.new(5,   'Diamonds'),
  Card.new(8,   'Spades'),
  Card.new(5,   'Hearts')
  ])

puts hand.evaluate


# PAIR -------------------------------------------

hand = PokerHand.new([
  Card.new(2,   'Hearts'),
  Card.new(9,   'Clubs'),
  Card.new(5,   'Diamonds'),
  Card.new(9,   'Spades'),
  Card.new(3,   'Diamonds')
  ])

puts hand.evaluate 

# HIGH CARD --------------------------------------------
hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
  ])

puts hand.evaluate
