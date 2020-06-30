D127:座席番号のくじ


data = gets.chomp.split("").map(&:to_i)
data.delete_at(1)
puts data.uniq.count == 1 ? "Yes" : "No"
