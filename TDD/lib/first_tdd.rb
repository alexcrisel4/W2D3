
def my_uniq(array)
  array & array
end

class Array
  def two_sum
    result = []
    (0...self.length - 1).each do |idx_1|
      (idx_1 + 1...self.length).each do |idx_2|
        sub = [idx_1,idx_2]
          result << sub if !result.include?(sub) && self[idx_1] + self[idx_2] == 0
      end
    end
    result
  end
end

def my_transpose(array)
  
 new_array = array.map.with_index do |row, row_idx|
    array.map.with_index do |ele2, col_idx|
      ele2 = array[col_idx][row_idx]
    end
  end
    new_array
end

def stock_picker(stock_prices)
  profit = Hash.new(0)
  stock_prices.each_with_index do |price_1, buy|
    stock_prices.each_with_index do |price_2, sell|
        if sell >= buy      
      profit[[buy,sell]] = (price_2 - price_1) 
        end 
      end
    end
    profit.max_by { |k,v| v}[0]
end

