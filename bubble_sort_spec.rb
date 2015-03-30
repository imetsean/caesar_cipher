
def bubble_sort(list)
  return list if list.size <= 1 # already sorted
  swapped = true
  while swapped do
    swapped = false
    0.upto(list.size-2) do |i|
      if list[i] > list[i+1]
        list[i], list[i+1] = list[i+1], list[i] # swap values
        swapped = true
      end
    end    
  end

  list
end


describe "Bubble Sort:" do
    it "Test 1" do
        expect(bubble_sort([4,3,78,2,0,2])).to eq([0,2,2,3,4,78])
    end
end