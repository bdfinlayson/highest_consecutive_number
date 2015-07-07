require 'pry'

class HighestNumber

  def initialize
    @prev_sum = 0
    @results = Array.new
  end

  def add_nums(input)
    input.each do |num|
      if new_sum_is_greater?(num)
        @prev_sum += num
        @results << @prev_sum if input.size - 1 == input.index(num)
      else
        @results << @prev_sum
        @prev_sum = 0
      end
    end
    parse_results
  end

  private

  def parse_results
    array = Array.new
    @results.each do |item|
      array << item if item.kind_of?(Fixnum)
    end
    array.max
  end

  def new_sum_is_greater?(num, new_sum = 0)
    new_sum = @prev_sum + num if num.kind_of?(Fixnum)
    if new_sum > @prev_sum
      true
    else
      false
    end
  end
end
