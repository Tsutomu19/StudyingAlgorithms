D143:制動距離の計算


以上の値が与えられるので、制動距離 L を求めるプログラムを作成してください。
ただし、小数点以下は切り捨てて出力してください。


input = gets.split(" ").map(&:to_i)
mass,velocity,force = input[0],input[1],input[2]
length = (mass * velocity ** 2) / (2 * force)
p length.floor