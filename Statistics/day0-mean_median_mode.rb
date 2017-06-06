size = gets.to_i
elements = gets.split(' ').map(&:to_i).sort
sum = elements.reduce(&:+)
mean = sum.to_f / size
median = (elements[size / 2] + elements[size / 2 - 1]) / 2.0
occurrences = elements.group_by(&:itself).sort_by { |i| i[1].size }
mode = occurrences.select { |i| i[1].size == occurrences.last[1].size }.sort_by(&:first)[0][0]

puts mean.round(1)
puts median.round(1)
puts mode
