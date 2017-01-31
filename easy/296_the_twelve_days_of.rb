# https://www.reddit.com/r/dailyprogrammer/comments/5j6ggm/20161219_challenge_296_easy_the_twelve_days_of/

ordinals = %w(first
              second
              third
              fourth
              fifth
              sixth
              seventh
              eighth
              ninth
              tenth
              eleventh
              twelveth)
gifts = ['Partridge in a Pear Tree',
         'Turtle Doves',
         'French Hens',
         'Calling Birds',
         'Golden Rings',
         'Geese a Laying',
         'Swans a Swimming',
         'Maids a Milking',
         'Ladies Dancing',
         'Lords a Leaping',
         'Pipers Piping',
         'Drummers Drumming']

ordinals.each.with_index(1) do |ordinal, index|
  puts "On the #{ordinal} day of Christmas\nmy true love sent to me:"

  trunc_gifts = gifts.slice(0, index).reverse
  trunc_gifts.each.with_index(1) do |gift, i|
    print 'and ' if trunc_gifts.length > 1 && gift == gifts.first
    puts "#{(trunc_gifts.length - i) + 1} #{gift}"
  end

  puts "\n"
end
