require "./main"
require './db.rb'

a = 'y'

while a == 'y'

  puts "----------------------------"
  puts "やることを記入してください！"
  tasks = gets.chomp
  task = Task.new(task: tasks)

  puts "----------------------------"
  puts "現在抱えているTasksは以下です"
  puts "#{task.read}"

  puts "----------------------------"
  puts "もし削除するタスクがありましたら番号を記入してください。もしもうなければcを記入してください"

  d = gets.chomp.to_i

  unless d.is_a?(Integer)
    until d.is_a?(Integer)
      puts "----------------------------"
      puts "正しい番号を記入してください"
      puts "----------------------------"
      puts "もし削除するタスクがありましたら番号を記入してください。もしもうなければcを記入してください"
      d = gets.chomp.to_i
    end
  end

  task.delete(d)

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
