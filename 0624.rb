D031:分から秒へ
p gets.to_i * 60


D041:本棚選び


data = gets.split(:&to_i).map(:&to_i)
book_weidth = data[0]
shelf_height = data[1]
shelf_weidth = data[2]
puts book_weidth <= shelf_height * shelf_weidth ? "OK":"NG"



# 2
data = gets.split(" ").map(&:to_i)
book_weidth = data[0]
shelf_height = data[1]
shelf_weidth = data[2]
puts book_weidth <= shelf_height * shelf_weidth ? "OK":"NG"