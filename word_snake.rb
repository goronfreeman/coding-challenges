# https://www.reddit.com/r/dailyprogrammer/comments/3bi5na/20150629_challenge_221_easy_word_snake/

class Snaker
  def snake(array)
    offset_length = 0
    array_length = (array.size - 1)
    array.each_with_index do |word, index|
      offset = ' ' * offset_length
      if index.even?
        offset_length += (word.length - 1)
        puts "#{offset} #{word}"
      elsif index.odd? && index == array_length
        letters = word.split('')
        letters.shift
        letters.each do |letter|
          puts "#{offset} #{letter}"
        end
      else
        letters = word.split('')
        letters.shift && letters.pop
        letters.each do |letter|
          puts "#{offset} #{letter}"
        end
      end
    end
  end
end

test = Snaker.new
test.snake(%w(SHENANIGANS SALTY YOUNGSTER ROUND DOUBLET TERABYTE ESSENCE EGG))
