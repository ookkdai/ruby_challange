puts <<~TEXT
       旅行プランを選択して下さい。
       1. 沖縄旅行（10000円）
       2. 北海道旅行（20000円）
       3. 九州旅行（15000円）
     TEXT

while true
  print "プランの番号を選択 > "
  plan_num = gets.to_i
  break if (1..3).include?(plan_num)
  puts "1以上を入力して下さい。"
end


case plan_num
when 1
  place = "沖縄旅行"
  price = 10000
when 2
  place = "北海道旅行"
  price = 20000
when 3
  place = "九州旅行"
  price = 15000
end

puts "#{place}ですね。"
puts "何名で予約されますか？"

while true
  print "人数を入力 > "
  join_member_num = gets.to_i
  break if join_member_num >= 1
  puts "1以上を入力して下さい。"
end

puts "#{join_member_num}名ですね。"

total_price = join_member_num * price

if join_member_num >= 5
  puts "5人以上なので10%割引になります。"
  total_price *= 0.9
end
puts "合計料金は#{total_price.floor}円になります。"