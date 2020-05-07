@secret_key = ('A'..'Z').to_a
# 配列に

@move = gets.to_i
# なんもじ
chars = gets.chomp.split("")
result = []
# 配列を作ってjoinするため

# 文字列のindexを出す処理
# evenが偶数
def chars_even?(char,move)
  key = @secret_key.index(char)
  @secret_key[key - move]
end

# oddが奇数
def chars_odd?(char,move)
  key = @secret_key.index(char)
  if (key + move) >= 26
    @secret_key[key + move - 26]
  else
    @secret_key[key + move]
  end
end

chars.each_with_index do |char, i|
  if i.odd?
    result.push(chars_odd?(char,move))
  else
    result.push(chars_even?(char,move))
  end
end











@secret_key = ('A'..'Z').to_a

@move = gets.to_i
chars = gets.chomp.split("")
result = []

# 文字列のindexを出す処理
# evenが偶数
def chars_even?(char)
  key = @secret_key.index(char)
  @secret_key[key - @move]
end

# oddが奇数
def chars_odd?(char)
  key = @secret_key.index(char)
  if (key + @move) >= 26
    @secret_key[key + @move - 26]
  else
    @secret_key[key + @move]
  end
end

chars.each_with_index do |char, i|
  if i.odd?
    result.push(chars_odd?(char))
  else
    result.push(chars_even?(char))
  end
end

puts result.join




