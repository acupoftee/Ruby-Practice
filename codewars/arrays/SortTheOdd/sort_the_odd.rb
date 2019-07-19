def sort_array(source_array)
    # 1. partition odd and even numbers with their indicies
    # 2. save odds and evens into new array
    # 3. sort the odd numbers
    # 4. insert remaining evens to new array
    odd, even = source_array.each_with_index.partition { |num, index| num.odd? }
  
    new_array = odd.map(&:first).sort 
  
    even.each { |num, index| new_array.insert(index, num) }
    
    new_array
  end