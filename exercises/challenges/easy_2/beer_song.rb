class BeerSong
  def initialize
    @lyrics = []
    compose_song
  end

  def compose_song
    @lyrics[0] = verse_0
    @lyrics[1] = verse_1
    @lyrics[2] = verse_2

    3.upto(99) do |verse_number|
      @lyrics << "#{verse_number} bottles of beer on the wall, #{verse_number} bottles of beer.\n" \
      "Take one down and pass it around, #{verse_number - 1} bottles of beer on the wall.\n"
    end
  end

  def verse(verse)
    @lyrics[verse]
  end

  def verses(starting_verse, ending_verse)
    @lyrics[ending_verse..starting_verse].reverse.join("\n")
  end

  def verse_2
    "2 bottles of beer on the wall, 2 bottles of beer.\n" \
    "Take one down and pass it around, 1 bottle of beer on the wall.\n"
  end

  def verse_1
    "1 bottle of beer on the wall, 1 bottle of beer.\n" \
    "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end

  def verse_0
    "No more bottles of beer on the wall, no more bottles of beer.\n" \
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

  def lyrics
    @lyrics.reverse.join("\n")
  end
end


test = BeerSong.new
puts test.verses(6, 5)