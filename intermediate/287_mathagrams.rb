# https://www.reddit.com/r/dailyprogrammer/comments/576o8o/20161012_challenge_287_intermediate_mathagrams/
# 1xx + xxx = 468

def main(input)
  extracted = extract_numbers(input)
  available = available_numbers(extracted)
  unformatted = unformat_mathagram(input)
  permutations = permutations_of(available)
  possible_permutations = []

  permutations.each do |perm|
    possible_solution = insert_permutation(unformatted, perm)
    parsed = parse_mathagram(possible_solution)
    if test_mathagram(parsed)
      possible_permutations << reformat_mathagram(possible_solution)
    end
  end

  possible_permutations
end

def extract_numbers(input)
  output = []
  input.each_char { |c| output << c.to_i if c.integer? }
  output
end

def available_numbers(input)
  (1..9).to_a - input
end

def unformat_mathagram(input)
  input.gsub(/\s+|\+|=/, '')
end

def permutations_of(input)
  input.permutation.to_a
end

def insert_permutation(input, permutation)
  result = []
  i = 0
  input.each_char do |c|
    if c != 'x'
      result << c
    else
      result << permutation[i]
      i += 1
    end
  end

  result
end

def parse_mathagram(input)
  { operand1: input[0, 3].join('').to_i,
    operand2: input[3, 3].join('').to_i,
    result: input[6, 3].join('').to_i }
end

def test_mathagram(input)
  input[:operand1] + input[:operand2] == input[:result]
end

def reformat_mathagram(input)
  input[0, 3].join('') + ' + ' + input[3, 3].join('') + ' = ' + input[6, 3].join('')
end

class String
  def integer?
    to_i.to_s == self
  end
end

main('193 + 275 = 468')
