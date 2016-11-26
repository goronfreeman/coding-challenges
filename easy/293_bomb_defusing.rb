# https://www.reddit.com/r/dailyprogrammer/comments/5e4mde/20161121_challenge_293_easy_defusing_the_bomb/

class BombDefuser
  COLORS = %i(white red black orange green purple).freeze

  def allowed?(pair)
    rules = {
      white:  %i(red orange green purple),
      red:    %i(green),
      black:  %i(red black purple),
      orange: %i(red black),
      green:  %i(orange white),
      purple: %i(red black)
    }

    rules[pair[0]].include?(pair[1])
  end

  def defuse(*colors)
    colors.map(&:to_sym).each_cons(2) do |pair|
      abort 'Boom!' unless pair.each { |c| COLORS.include?(c) } && allowed?(pair)
    end

    puts 'Bomb defused.'
  end
end

d = BombDefuser.new
print 'Input 1: '
d.defuse('white', 'red', 'green', 'white')

print 'Input 2: '
d.defuse('white', 'orange', 'green', 'white')
