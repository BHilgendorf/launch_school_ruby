# generate lyrics for the 99 botles of beer on the wall son

# instance methods
#    verse (takes integer) , outputs one specific verse beginning with that number
#       - handle verse begins with 2 bottles, ends with 1 bottle
#       - handle verse begins with 1 bottle, ends with 'no more bottles'
#       - handle verse begins with "no more bottles", ends with "99 bottles"
#    -passing multiple arguments, prints those verses

#   lyrics - outputs entire song

class BeerSong

  def verse(verse_number)
    case verse_number
    when 2 then verse_2
    when 1 then verse_1
    when 0 then verse_0
    else 
    "#{verse_number} bottles of beer on the wall, #{verse_number} bottles of beer.\n" +
    "Take one down and pass it around, #{verse_number - 1} bottles of beer on the wall.\n"
    end
  end

  def verse_2
    "2 bottles of beer on the wall, 2 bottles of beer.\n" +
    "Take one down and pass it around, 1 bottle of beer on the wall.\n"
  end

  def verse_1
    "1 bottle of beer on the wall, 1 bottle of beer.\n" +
    "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end

  def verse_0
    "No more bottles of beer on the wall, no more bottles of beer.\n" +
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

  def lyrics
    lyrics = ""
    99.downto(1) do |counter|
      lyrics += verse(counter)
      lyrics += "\n"
    end
    lyrics += verse(0)
  end
end

test = BeerSong.new
puts test.verse(7)



