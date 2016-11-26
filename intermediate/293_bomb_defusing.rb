# https://www.reddit.com/r/dailyprogrammer/comments/5emuuy/20161124_challenge_293_intermediate_defusing_the/

class BombDefuserPro
  STATE_MACHINE = {
    0 => { white: 1, red: 2 },
    1 => { white: 2, orange: 3 },
    2 => { red: 0, black: 3 },
    3 => { black: 3, orange: 4, green: 5 },
    4 => { green: 6 },
    5 => { orange: 6 },
    6 => true
  }.freeze

  def defuse(*wires)
    state = 0
    wires.map(&:to_sym).each do |wire|
      abort 'Boom!' unless STATE_MACHINE[state].keys.include?(wire)
      state = STATE_MACHINE[state][wire]
      break if state == 6
    end
    puts 'Bomb defused.'
  end
end

d = BombDefuserPro.new
print 'Input 1: '
d.defuse('white', 'white', 'red', 'white', 'orange', 'black', 'black', 'green', 'orange')

print 'Input 2: '
d.defuse('white', 'white', 'green', 'orange', 'green')
