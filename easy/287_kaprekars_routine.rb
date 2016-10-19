# https://www.reddit.com/r/dailyprogrammer/comments/56tbds/20161010_challenge_287_easy_kaprekars_routine/

KAPREKAR = 6174

def num_to_enum(num)
  num.to_s.each_char.map(&:to_i)
end

def largest_digit(num)
  num_to_enum(num).max
end

def sort_digits(num, asc = false)
  n = num_to_enum(num).sort
  asc ? n.inject { |a, e| a * 10 + e } : n.reverse.inject { |a, e| a * 10 + e }
end

def kaprekar(num)
  counter = 0

  until num == KAPREKAR
    break if num.to_s == num.to_s.reverse
    num = sort_digits(num) - sort_digits(num, true)
    counter += 1
  end

  counter
end

def largest_kaprekar
  n = 9999
  max_iter = 0

  while n > 1000
    iter = kaprekar(n)

    if iter > max_iter
      max_iter = iter
      max_val = n
    end

    n -= 1
  end

  puts "Largest possible is: #{max_val} with #{max_iter} iterations."
end
