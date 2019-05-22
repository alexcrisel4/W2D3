
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