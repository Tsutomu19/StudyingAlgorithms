# 23:30 堀越 優希
data = gets.split(" ").map(&:to_i)
student_count = data[0]
question_count = data[1]
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


# ///この問題を解くためにはどうしたらいいか

# ///問題を読み取る力
# 引き出しの数
# プログラミングの書き方
# 分解する力がないので解けない

# 自分の口で説明する
# 振り返る

# ///コード解説
# 引数はメソッドに情報をプラスしている
# メソッドを呼び出すときに引数を一緒に渡してあげると、
# メソッドの中でその引数の値を使える。

# 戻り値がある場合、呼び出した先がそのまま戻り値に置き換えられる。