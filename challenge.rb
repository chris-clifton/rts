# challenge.rb
class Challenge
  # Print the number of integers in an array that are above the given input
  # and the number that are below
  # e.g.: array [1, 5, 2, 1, 10] with input 6, print "above: 1, below: 4"

  # def above_or_below(array, input)
  #   above, below = array.partition{ |num| num > input }
  #   p "above: #{above.length}, below: #{below.length}"
  # end

  def above_and_below(array, number)
    above = 0
    below = 0
    equal = 0

    array.each do |num|
      if num > number
        above += 1
      elsif num < number
        below += 1
      else
        equal += 1
      end
    end
    p "above: #{above}, below: #{below}"
  end

  # Rotate the characters in a string by a given input and have the overflow
  # appear at the beginning
  # e.g.: "MyString" rotated by 2 is "ngMyStri"
  def rotate_string(string, number)
    overflow = string.slice!(-number..-1)
    overflow << string
  end
end
