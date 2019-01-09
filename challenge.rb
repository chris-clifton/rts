# challenge.rb
class Challenge
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

  def rotate_string(string, number)
    overflow = string.slice!(-number..-1)
    overflow << string
  end
end
