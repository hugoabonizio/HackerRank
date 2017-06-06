size = gets.to_i
elements = gets.split(' ').map(&:to_i)
weights = gets.split(' ').map(&:to_i)
weights_sum = weights.reduce(&:+)
weighted_sum = elements.each_with_index.map { |elem, i| elem * weights[i] }.reduce(&:+)

puts (weighted_sum.to_f / weights_sum).round(1)
