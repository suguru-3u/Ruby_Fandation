index = 1
a = 'y'
# task = []

while a == 'y'

  # if task
  #   puts "----------------------------"
  #   puts "現在抱えていることはこちらです。"
  #   puts "#{index}.#{task}"
  # end

  puts "----------------------------"
  puts "やることを記入してください！"

  task = gets.chomp
  puts "----------------------------"
  puts "#{index}.#{task}"

  # tasks.each do |task|
  #   puts "#{index}.#{tasks}"
  #   index += 1
  # end

  puts "----------------------------"
  puts "まだ記入することがありましたらyを記入してください。もしもうなければnを記入してください"

  a = gets.chomp

  unless a == 'y'
    until a == 'y' || a == 'n'
      puts "----------------------------"
      puts "正しい番号を記入してください"
      puts "----------------------------"
      puts "まだ記入することがありましたらyを記入してください。もしもうなければnを記入してください"
      a = gets.chomp
    end
  end

end
