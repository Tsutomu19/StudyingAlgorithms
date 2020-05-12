
# c055
number = gets.to_i
sent = gets.chomp
answers = (1..number).map{ gets.chomp }.select{ |answer| answer.include?(number) }

puts answers == sent ? answers : "none"
# ここで詰まった

# 解答
number = gets.to_i
sent = gets.chomp
answers = (1..number).map{ gets.chomp }.select{ |answer| answer.include?(sent) }

puts answers.any?? answers : "none"










# c028
# word = gets.split(' ')
number = gets.to_i
answer = (1..number).map{ gets.chomp.split(" ") }


if answer[0]  == answer[1]
end
<= status[0] && status[0]  <= max_atk.to_i













# 解答

problems = gets.to_i
points = 0

def word_match(official,myanswer)
    m_official = official.split("")
    m_answer = myanswer.split("")
    zure = 0
    
    m_official.size.times do |i|
        unless m_official[i] == m_answer[i]
            zure += 1
        end
    end
    return zure
end

(1..problems).map{ gets.chomp.split(" ") }
.each do |official,myanswer|
    if official == myanswer
        points = points + 2
    elsif official.length == myanswer.length && word_match(official,myanswer) == 1
        points = points + 1
    end
end
p points


# メロンが大好きなあなたは、回転寿司のお店にメロンを食べに行きました。
# ネタはそれぞれ皿にのって 1 つずつ流れていきます。

# あなたはメロンを食べきるのに、自分の前に 10 皿流れていく程度の時間がかかります。
# メロンを食べている最中は新たにメロンを取ることができません。

# あなたがお店に滞在している間に流れてくる皿の数 T と流れてくるネタのリストが与えられるので、滞在時間中に食べられるメロンの数を出力するプログラムを作成してください。

# メロンはリスト上では "melon" という文字列で表されます。また、滞在時間が終わった時に食べているメロンは最後まで食べるものとします。

# 以下は入力例 1 を図示したものです。食べられないネタは薄い色にしています。




number = gets.to_i
m_points = 0

(1..number).map{ gets.chomp }
.each do |sara|
    if sara == "melon"
        m_points += 1

    end
end

if sushi = 







# c62
23:55 堀越 優希 stay_time = gets.to_i

lines = []
while line = gets
    lines << line.chomp
end

melon_counter = 0
limit = 0
lines.each_with_index do |sushi,i|
    #　メロンが来た時に、メロンを食べていたらスルーしなければならない
    if sushi == "melon"
        melon_counter += 1
        limit +=10
        # 繰り返しの最中のネタをぶっ飛ばす処理を書かなければならない
    else
        limit += 1
    end
    # 終了時間を超えても、メロンを食べている最中ならばカウントを増やさなければならない
    
    if limit >= stay_time
        break
    end
end

p melon_counter
23:55 けんご init = gets.to_i
foods = []

init.times do |i|
  foods.push(gets.to_s.chomp)
end

foods.each_with_index do |food,i|
  if food == "melon"
    foods.slice!(i+1,10)
  end
end

p foods.count("melon")






23:30 竹田 つとむ input = gets.split(' ').map(&:to_i)
day = input[0]
point = input[1]

23:30 堀越 優希
data = gets.split(" ").map(&:to_i)
student_count = data[0]
question_count = data[1]
# とりあえず入れた
student_data = (1..student_count).map{gets.chomp!.split(" ").map(&:to_i)}
@single_point = 100 / question_count

def calc(delay,collect)
  score = collect * @single_point
  if delay >= 1 && delay <= 9 
      score *= 0.8
      score = score.floor
      elsif delay >= 10
      score = 0
  end
  
  if score >= 0 && score <= 59 
      "D"
      elsif score >= 60 && score <= 69
      "C"
      elsif score >= 70 && score <= 79
      "B"
      elsif score >= 80 && score <=100
      "A"
  end
end

student_data.each do |delay, correct|
    puts calc(delay,correct)
end