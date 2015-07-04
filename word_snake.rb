# https://www.reddit.com/r/dailyprogrammer/comments/3bi5na/20150629_challenge_221_easy_word_snake/

class Snaker
  def snake(array)
    length = 0
    array.each_with_index do |word, index|
      offset = ' ' * length
      if index.even?
        length += (word.length - 1)
        puts "#{offset} #{word}"
      elsif index.odd? && index[-1]
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
