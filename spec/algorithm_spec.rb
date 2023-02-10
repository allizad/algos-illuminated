require 'algorithm'

def random_array_of_length(length)
  (0..50).to_a.sort{ rand() - 0.5 }[0..(length - 1)]
end

RSpec.describe Algorithm do
  context 'mergesort' do
    it 'correctly merge sorts arrays' do
      # rando array lengths to test
      [2, 4, 5, 8, 16, 35, 222].each do |length|
        arr = random_array_of_length(length)
        expect(Algorithm.merge_sort(arr)).to eq arr.sort
      end
    end
  end
end
