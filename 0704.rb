
D159:短冊の大きさ
string_count = []

(1..3).map{gets.chomp.split("")}
.each do |s|
    string_count << s.count
end

p string_count.max