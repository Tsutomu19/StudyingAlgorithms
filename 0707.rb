D126
p gets.split(" ").map(&:to_i).sum


D131:脱出ゲーム

array = []
data = gets.chomp.split("").map(&:to_i)
.each do |d|
    if d == 1
        array << "A"
    elsif d == 2
        array << "B"
    else
        array << "C"
    end
end

puts array.join