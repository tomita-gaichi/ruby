require "csv"
puts "1(新規でメモを作成) 2(既存のメモ編集する)"
memo_type = gets.chomp.to_i

if memo_type == 1
  puts "拡張子を除いたファイルを入力してください"
  memo_title = gets.chomp.to_s
  puts "メモの内容を入力してください"
  puts "完了後に「Ctr+D」で保存"
  memo_input = readlines.map(&:chomp)
  CSV.open("#{memo_title}.csv","w")do |csv|
  csv << memo_input
end

elsif memo_type == 2
  puts "編集したいメモの拡張子を除いたファイル名を入力してください"
  file_name = gets.chomp.to_s
  puts "編集内容を記入してください"
  puts "完了後に「Ctr+D」で保存"
  memo_input = readlines.map(&:chomp)
  CSV.open("#{file_name}.csv","a")do |csv|
  csv << memo_input
end

else
  puts "1または2を入力してください"
end
