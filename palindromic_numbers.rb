# https://www.reddit.com/r/dailyprogrammer/comments/38yy9s/20150608_challenge_218_easy_making_numbers/

print 'Enter an integer: '
a = gets.chomp.to_i
b = a
counter = 0

until b == b.to_s.reverse.to_i
  counter += 1
  b = (b + b.to_s.reverse.to_i)
end

puts "#{a} gets palidromic after #{counter} steps: #{b}"
