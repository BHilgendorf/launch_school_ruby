class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
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

deck = Deck.new
drawn = []
52.times {drawn << deck.draw}
puts drawn.count { |card| card.rank == 5} == 4
puts drawn.count { |card| card.suit == 'Hearts'} == 13

drawn2 = []
52.times { drawn2 << deck.draw}
puts drawn != drawn2



