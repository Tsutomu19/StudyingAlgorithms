D080:忘年会の予算


people = gets.split(" ").map(&:to_i)
p (people[0] * 6000) + (people[1] * 4000)







C013:嫌いな数字

# 1時間半くらいかかりました。


# 1
kirai = gets.to_i
hospital_room = gets.to_i

p hospital = (1..hospitl_room).map{gets.chomp}.map(:&to_i)





kirai = gets.to_i
hospital_room = gets.to_i





hospital = (1..hospital_room).map{gets.chomp}.map(&:to_i).split
# [101, 204, 301, 401, 501]

hospital.each do |h|
    h.include?(kirai)
end


# 2
kirai = gets.to_i
hospital_room = gets.to_i

hospital = (1..hospital_room).map{gets.chomp}.map
# [101, 204, 301, 401, 501]

hospital.each do |h|
    h.include?("kirai")
end



# 3
kirai = gets.to_i
hospital_room = gets.to_i

hospital = (1..hospital_room).map{gets.chomp}.map
# [101, 204, 301, 401, 501]
array = []
hospital.each do |h|
   if  h.include?("kirai")
       array << h
   end
end



# 4
kirai = gets.to_i
hospital_room = gets.to_i

hospital = (1..hospital_room).map{gets.chomp}.map
# [101, 204, 301, 401, 501]
ansewer = []
hospital.each do |h|
   if  h.include?("kirai")
       ansewer << h
   end
end

p array






# 5
kirai = gets.to_i
hospital_room = gets.to_i

hospital = (1..hospital_room).map{gets.chomp}
# ["101", "204", "301", "401", "501"]
answer = []
hospital.each do |h|
  if  h.split.include?("kirai")
      answer << h
  end
end

p answer



# 6
kirai = gets.chomp
hospital_room = gets.to_i

hospital = (1..hospital_room).map{gets.chomp}
# ["101", "204", "301", "401", "501"]
answer = []
hospital.each do |ho|
    ho.each do |h|
      if h.include?("kirai")
          answer << hospital
      end
    end
end

p answer



# 7
# include?の試しかた。
# a = "101"
# if a.include?("1")
#     p a
# end
# =>true
# 一分けなくてもいいことがわかった。




kirai = gets.chomp
hospital_room = gets.to_i

hospital = (1..hospital_room).map{gets.chomp}
# ["101", "204", "301", "401", "501"]
answer = []
hospital.each do |h|
  if ! h.include?(kirai)
       answer << h
  end
end

puts answer.nil? "none" : answer 







# 文字列でとってinculude?を使った。
# inculude?の使い方を学んだ。
# include?()
# ()の中身が文字列なら""
# nil?とempty?の違い。
# 三項演算子で短くした。




# 9
kirai = gets.chomp
hospital_room = gets.to_i

answer = []
hospital = (1..hospital_room).map{gets.chomp}
.each do |h|
  if ! h.include?(kirai)
       answer << h
  end
end

puts answer.empty? ? "none" : answer








