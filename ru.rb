# 参照
require "./main"
require './db.rb'

# 変数
a = 'y'
time = 1

# 処理内容
while a == 'y'

  if time > 1
    # create
    puts "----------------------------"
    puts "やることを記入してください！、もしなければn記入してください"
    tasks = gets.chomp
    unless tasks == 'n'
      task = Task.new(task: tasks)
    end

    # read
    puts "----------------------------"
    puts "現在抱えているTasksは以下です"
    puts "#{task.read}"

    # delete
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

    # 確認
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

  else
    # create
    puts "----------------------------"
    puts "やることを記入してください！"
    tasks = gets.chomp
    task = Task.new(task: tasks)

    # read
    puts "----------------------------"
    puts "現在抱えているTasksは以下です"
    puts "#{task.read}"

    # delete
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

    # 確認
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

  time += 1

end
