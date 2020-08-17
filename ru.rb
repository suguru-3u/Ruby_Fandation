require "./main"
require './db.rb'
# index = 1
a = 'y'

while a == 'y'

  # if task
  #   puts "----------------------------"
  #   puts "現在抱えていることはこちらです。"
  #   puts "#{index}.#{task}"
  # end

  puts "----------------------------"
  puts "やることを記入してください！"
  tasks = gets.chomp
  task = Task.new(task: tasks)

  tasks = []
  tasks << task

  tasks.each do |task|
    puts "----------------------------"
    puts "#{task.info}"
  end

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
