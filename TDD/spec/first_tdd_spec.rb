require 'first_tdd'

describe "#my_uniq" do 
  it "Returns a unique array" do 
    expect(my_uniq([1,2,1,3,3])).to eq([1,2,3])
  end
  
  it "Should no use the built in #uniq method" do
    expect([1,2,1,3,3]).to_not receive(:uniq)
  end
end

 describe "#two_sum" do
  it "returns the sum of the elements at the subarray indices that equal zero" do
    expect([-1,0,2,-2,1].two_sum).to eq([[0, 4], [2, 3]])
  end

  it "orders indices properly" do
    expect([-1,0,2,-2,1].two_sum).to_not eq([[2,3], [0,4]])
  end

  end

  describe "#my_transpose" do
    it "swaps row and col indices" do
      expect(my_transpose([[0, 1, 2],[3, 4, 5],[6, 7, 8]])).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
    end
  end

  describe "#stock_picker" do
    it "buys before it sells" do
      expect(stock_picker([1,2,3,4,5,6,7])).to eq([1,2])
    end

    it "allows you to buy and sell on the same day" do
      expect(stock_picker([7,6,5,4,3,2,1])).to eq([0,0])
    end

  end