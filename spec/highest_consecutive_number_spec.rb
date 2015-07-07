require 'spec_helper'

describe HighestNumber do
  let(:hn) { HighestNumber.new }

  it 'should return the largest sum of consecutive postitive numbers' do
    array = [1,2,3,4,5,6]
    result = hn.add_nums(array)
    expect(result).to eq 21
  end

  it 'should return the largest sum of a mixed array' do
    array = [1,2,3,4,5,-2,1,2,3,4]
    result = hn.add_nums(array)
    expect(result).to eq 15
  end

  it 'should return the largest with many negatives' do
    array = [1,2,-5,-2,1,4,-5,-3,8,9,0,-2,-7,10]
    result = hn.add_nums(array)
    expect(result).to eq 17
  end

  it 'should reject non-number characters' do
    array = [1,2,'a','$','%',5,6,'xyz',10]
    result = hn.add_nums(array)
    expect(result).to eq 11
  end
end
