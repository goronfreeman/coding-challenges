# https://www.reddit.com/r/dailyprogrammer/comments/5hy8sm/20161212_challenge_295_easy_letter_by_letter/

def letter_by_letter(start, finish)
  puts start

  start.each_char.with_index do |char, i|
    if char != finish.split('')[i]
      puts "#{finish.slice(0, i + 1)}#{start.slice(i + 1, finish.length - i)}"
    end
  end
end

letter_by_letter('floor', 'brake')
letter_by_letter('wood', 'book')
letter_by_letter('a fall to the floor', 'braking the door in')
