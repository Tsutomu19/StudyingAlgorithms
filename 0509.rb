
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













# c62