# 二百万までの素数の和を求めなさい

# 初めて自力で理解しながら手を動かした。
# 次は、素数は何かというロジックを考えながら行う

require 'prime'

p Prime.each(20000).to_a.sum






# D問題
line = gets.to_i

p 100 + line*10
