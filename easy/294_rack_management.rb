# https://www.reddit.com/r/dailyprogrammer/comments/5go843/20161205_challenge_294_easy_rack_management_1/

def scrabble(tiles, word)
  copy = tiles.dup

  word.each_char do |l|
    if copy.include?(l)
      copy.sub!(l, '')
    elsif copy.include?('?')
      copy.sub!('?', '')
    else
      return false
    end
  end

  true
end
