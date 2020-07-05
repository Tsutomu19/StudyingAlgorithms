arr = [1,2,3,4,5]
data_array = []
(1..4).map{gets.chomp}.map(&:to_i)
.each do |i|
    data_array << i
end

data_array.sort
puts (arr - data_array)