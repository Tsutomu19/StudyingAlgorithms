C029:旅行の計画

input = gets.split(" ").map(&:to_i)
holiday = input[0]
schedule = input[1]
data = (1..holiday).map{gets.split(" ").map(&:to_i)}
# [[19, 0], [20, 0], [21, 60], [22, 30], [23, 10], [24, 10], [25, 90]]


arr = []
(holiday-2).times do |d,i|
    arr << data[i..i+2]
end
p arr
