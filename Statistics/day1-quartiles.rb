def median(array)
  size = array.size
  return array[size / 2] if size.odd?
  (array[array.size / 2] + array[array.size / 2 - 1]).to_f / 2
end

size = gets.to_i
elements = gets.split(' ').map(&:to_i)
sorted = elements.sort

# The (size % 2) makes it works on both odd and even arrays
# since it adds +1 or +0
puts median(sorted[0..(sorted.size / 2) - (size % 2)]).to_i
puts median(sorted).to_i
puts median(sorted[((sorted.size / 2) + (size % 2))..-1]).to_i
