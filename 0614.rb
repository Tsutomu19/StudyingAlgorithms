何をしたいのかを意識しょう
タクシーの運賃は初乗り距離と初乗り運賃、加算距離、加算運賃で決まります。
タ
タクシーの料金の最安値と最高値を以下の形式で出力してください。

2 700
600 200 200 400
900 800 400 500


input = gets.split(" ").map(&:to_i)
taxi_syurui = input[0]
kyori = input[1]
data = []
total_taxi = (1..taxi_syurui).map{gets.split(" ").map(&:to_i)}
total_taxi.each do |first_kyori,first_fare,add_kyori,add_fare|
    if first_kyori >= kyori
        data << first_fare
    else
        data << p (kyori - first_kyori) * add_fare + first_fare
    end
end

puts data.min + " " + date.max













fare = gets.split(" ").map(&:to_i)
first_kyori = fare[0]
first_fare = fare[1]
add_kyori = fare[2]
add_fare = fare[3]

目的地までの距離が初乗り距離以上かどうか






input = gets.split(" ").map(&:to_i)
taxi_syurui = input[0]
kyori = input[1]
data = []
total_taxi = (1..taxi_syurui).map{gets.split(" ").map(&:to_i)}
total_taxi.each do |first_kyori,first_fare,add_kyori,add_fare|
    if first_kyori >= kyori
        data << (kyori - first_kyori) / add_kyori.ceil（2)  * add_fare + first_fare
    else
        data << first_fare
    end
end
puts data.min
puts "#{data.min}" + " " + "#{date.max}"



pでどこまで正しい値が出てるのかデバックする
integer => float型にする


