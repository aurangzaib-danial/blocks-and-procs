require './mimic_select'

RSpec.describe 'Mimic Select' do
  it 'returns all the elements that when passed through the block return truthy value' do
    test_array = mimic_select([1,2,3,4]) do |number|
      number.even?
    end
    expect(test_array).to eq([2,4])
  end

  it 'monkey patch on array' do
    test_array = [1,2,3,4].my_select do |number|
      number.even?
    end
    expect(test_array).to eq([2,4])
  end
end 
