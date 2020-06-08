shade
noisy
silent

取得





a = gets.split(' ')
b = 
x_i = 
y_i = 
R = 

if (x_i-a)*(x_i-a) + (y_i-b)*(y_i-b) >= R
    puts "silent"
end

if (x_i-a)*(x_i-a) + (y_i-b)*(y_i-b) < R
    puts "noisy"
end




a = gets.chomp!.split(' ').map(:&to_i)
n = gets.to_i


(1..n).each do |kokage|
    if (x_i-a)**2 + (y_i-b)**2 >= R**2
        puts "silent"
    else
        puts "noisy"
    end
end





# 00:02 けんご san answer tsutomu.ver


# 工事の初期値
kouji = gets.chomp!.split(' ').map(&:to_i)

# 木陰の数
n = gets.to_i

# 木陰のxとy
lines = []

# 木陰のxとyの配列数が木陰の数と同じになるまでloop
until lines.size == n
    lines << gets.chomp.split(' ').map(&:to_i)
end

# 木陰のxとyの回数分ループを繰り返し、silentかnoisyか判定する
lines.size.times do |i|
  if (lines[i][0] - kouji[0]) ** 2 + (lines[i][1] - kouji[1]) ** 2 >= kouji[2] ** 2
    puts "silent"
  else
    puts "noisy"
  end
end

00:02 けんご # 工事の初期値
kouji = gets.chomp!.split(' ').map(&:to_i)

# 木陰の数
n = gets.to_i

# 木陰のxとy
lines = []

# 木陰のxとyの配列数が木陰の数と同じになるまでloop
until lines.size == n
    lines << gets.chomp.split(' ').map(&:to_i)
end

# 木陰のxとyの回数分ループを繰り返し、silentかnoisyか判定する
lines.size.times do |i|
  if (lines[i][0] - kouji[0]) ** 2 + (lines[i][1] - kouji[1]) ** 2 >= kouji[2] ** 2
    puts "silent"
  else
    puts "noisy"
  end
end


n = gets.to_i

p gets.chomp!.split(' ').map(&:to_i).inject(:+)

untilは何かを加算していくときに使う
    