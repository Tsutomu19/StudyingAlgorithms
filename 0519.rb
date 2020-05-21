

C044:手の組み合わせ
3
paper
paper
rock

number = gets.to_i
janken = (1..number).map{gets.chomp}.map{&:to_i}
janken.each do |j|
    for i in 1..number do
        for j in 1..number do
            if i == j
                
                print " " unless j == number
           
            elsif log_battle.include?([i,j])
                
                print " " unless j == number
            else
                
                print " " unless j == number
            end
        end
        puts 
    end








    
    
    今日は PAIZA 6 というくじの当選番号の公表日です。
    
    PAIZA 6 の購入者は 1 から 100 までの好きな数字を 6 つ選びます。
    抽選では同様に 6 つの当選番号が発表され、購入したくじの数字と一致していた数字の数に応じて賞金が当たります。
    
    あなたは、先日 N 枚のくじを購入しました。
    プログラマーであるあなたは、N 枚の宝くじそれぞれについて、 当選番号と一致した数字の数について調べるプログラムを書くことにしました。
    
    ここで、くじの購入例を見てみましょう。
    
    
    それぞれのくじについて、当選番号と一致する数字の数を答えてください。

1 2 3 4 5 6
3
1 5 4 2 3 6
9 6 2 7 1 5
32 9 87 33 41 60

winning = gets.split(" ").map(&:to_i)

n = gets.to_i
mine = (1..n).map{gets.split(" ")}.map(&:to_i)
.each do |m|
  if 
  end
end


winning = gets.split(" ").map(&:to_i)
n = gets.to_i
data = (1..n).map{gets.split(" ").map(&:to_i)}
.each do |dd|
    .each do |d|
        d.include?(wining)
    end
  end
# [1, 2, 3, 4, 5, 6]

# [[1, 5, 4, 2, 3, 6], [9, 6, 2, 7, 1, 5], [32, 9, 87, 33, 41, 60]]
@winning_number = gets.chomp.split(" ").map(&:to_i)
lotos = gets.to_i

def correct_answer(number)
  count = 0
  number.each do |num|
    if @winning_number.include?(num)
      count = count + 1
    end
  end
  count
end

(1..lotos).map{ gets.chomp.split(" ").map(&:to_i) }.each{|number| p correct_answer(number) }






numbers = gets.split(" ").map(&:to_i)

(1..gets.to_i).map{gets.split(" ").map(&:to_i)}.each {|f| p (f & numbers).count}



C035:試験の合格判定
# 総合力を重視する paiza 大学の入試では 1 次試験 (英語、数学、理科、国語、地理歴史の 5 科目で各 100 点満点) の成績で2段階選抜を行います。2段階選抜を通過する条件は以下のようになっています。

# 全科目の合計得点が 350 点以上
# 理系の受験者の場合は理系 2 科目 (数学、理科) の合計得点が 160 点以上
# 文系の受験者の場合は文系 2 科目 (国語、地理歴史) の合計得点が 160 点以上
# 受験者それぞれの各科目の点数が入力されるので、何人2段階選抜を通過できるかを求めてください。

# 例）t_i について文系は "l" ("L" の小文字)、理系は "s" で表されます。


5
s 70 78 82 57 74
l 68 81 81 60 78
s 63 76 55 80 75
s 90 100 96 10 10
l 88 78 81 97 93

paiza 大学の入試の2段階選抜を何人通過できるかを整数で 1 行に出力してください。


test = (1..gets.to_i).map{gets.split(" ").map(&:to_i)}
answer = []

.each do |t|
    if t[1..5].sum >= 350 
        answer << t
    end
end

p answer.count










count = 0 
data.each do |f|
    if f[0] == "l"
      f.map!(&:to_i)
      count += 1 if f.sum >= 350 && f[4] + f[5] >= 160
    else
      f.map!(&:to_i)
      count += 1 if f.sum >= 350 && f[2] + f[3] >= 160
    end
end

p count




input_line = gets.to_i
count = 0
# for i in 1..input_line
(1..input_line).each do
  tests = gets.split(" ")
  rikei =  tests[2..3].map(&:to_i).sum
  bunkei = tests[4..5].map(&:to_i).sum
  summary = tests[1..5].map(&:to_i).sum
  if summary >= 350 && (tests[0] == "l" && bunkei >= 160 || tests[0] == "s" && rikei >= 160)
    count = count + 1
  end
end
puts count




C063:ガーデニング
・続く N 行のうちの i 行目 (1 ≦ i ≦ N) には
i 番目の花の種が花を咲かせるまでの日数を表す整数 a_i、
i 番目の花の種を庭にまく日を表す整数 b_i がこの順で半角スペース区切りで与えられます。
a_i + 1 日後に枯れてしまいます。


4
1 3
2 2
1 1
1 2

seed_day = (1..gets.to_i).map{gets.split(" ").map(&:to_i)}
answer = []
seed_day.each do |a,b|
answer << a+b
end
p answer.first



C063:ガーデニング
・続く N 行のうちの i 行目 (1 ≦ i ≦ N) には
i 番目の花の種が花を咲かせるまでの日数を表す整数 a_i、
i 番目の花の種を庭にまく日を表す整数 b_i がこの順で半角スペース区切りで与えられます。
a_i + 1 日後に枯れてしまいます。


4
1 3
2 2
1 1
1 2



flowers_count = gets.to_i

flowers = (1..flowers_count).map{gets.split(" ").map(&:to_i)}.sort{|a,b| a[1] <=> b[1]}
# ライフと巻く日
# ライフを繰り返しごとに-1する？0になったら消す的な

kadan = []
for i in 0..flowers_count - 1 do
   p "#{i}" + "日目"
   kadan << flowers[i]
   if i >= 1
       kadan.each do |life,day|
          life -= 1
          p kadan
       end
   end
end

p kadan







