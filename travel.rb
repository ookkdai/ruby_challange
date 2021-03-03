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
        puts "1~3の番号を選択してください。"
       end
       
       
       # プラン番号が 1 のとき
       if plan_num == 1
        place = "沖縄旅行"
        price = 10000
       
       # プラン番号が 2 のとき
       elsif  plan_num == 2
       place = "北海道旅行"
       price = 20000
       # プラン番号が 3 のときçcc
       elsif plan_num == 3
       place = "九州旅行"
       price = 15000
       end
       puts "#{place}ですね。"
       puts "何名で予約されますか？"
       
       while true
        print "人数を入力 > "
        join_member_num=gets.to_i
        break if  join_member_num > 0
        puts "1以上を入力してください。"
       end

       puts "#{join_member_num}名ですね。"

       if join_member_num >= 5
        puts "5名以上なので10%割引となります。"
        total_price = join_member_num * price * 0.9
      else
        total_price = join_member_num * price
      end
      
      puts "合計料金は#{total_price.floor}円になります。"



