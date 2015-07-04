# https://www.reddit.com/r/dailyprogrammer/comments/38yy9s/20150608_challenge_218_easy_making_numbers/

a = 68
b = a
count = 0

until b == b.to_s.reverse.to_i do
  count += 1
  b = (b + b.to_s.reverse.to_i)
end

puts "#{a} gets palidromic after #{count} steps: #{b}"
