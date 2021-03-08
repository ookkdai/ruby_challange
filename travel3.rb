def disp_plans(plans)
  puts "旅行プランを選択してください"
  plans.each.with_index(1) do |plan, i|
    puts "#{i}. #{plan[:place]}旅行(#{plan[:price]}円)"
  end
end

def choose_plans(plans)
  while true
    print "プランの番号を選択 > "
    select_plan_num= gets.to_i
    break if (1..3).include?(select_plan_num)
    puts "1〜3の番号から選んでください。"
  end
  plans[select_plan_num - 1]
end


def decide_num_of_people(chosen_plan)
  puts "#{chosen_plan[:place]}旅行ですね。"
  puts "何名で予約されますか？"
  while true
    print "人数を入力 > "
    num_of_people = gets.to_i
    break if num_of_people >= 1
    puts "1以上を入力して下さい。"
  end
  puts "#{num_of_people}名ですね。"
  num_of_people
end

def calculate_charges(chosen_plan, num_of_people)
  plan_total_price = chosen_plan[:price] * num_of_people
  if num_of_people >= 5
    puts "5人以上なので10%割引になります。"
    plan_total_price *= 0.9
  end
  puts "合計料金は#{plan_total_price.floor}円になります。"
end





