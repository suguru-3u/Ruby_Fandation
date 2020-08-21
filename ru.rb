# 参照
require "./main"
require './db.rb'
require 'date'
require "json"
require "open-uri"

# 変数
a = 'y'
time = 1

# 処理内容
while a == 'y'

    # start
    puts "----------------------------"
    puts "現在時刻を確認したい方は1を日本の天気を知りたい方は2をタスクを登録したい方は３を止める方は４を入力してください！"
    num = gets.chomp.to_i

    if num == 1
      date = Time.new
      puts "----------------------------"
      puts "現在時刻は#{date}"
    elsif num == 2
      puts "----------------------------"
      puts "知りたい天気の地域の番号を入力してください!、1東京,2広島,３鹿児島,4旭川"
      number = gets.chomp.to_i
      c = Weather.new(number: number)
      c.observation
    elsif num == 3
      # create
      puts "----------------------------"
      puts "やることを記入してください！、もしなければn記入してください"
      tasks = gets.chomp
      if tasks == 'n'
        puts "戻ります"
      else
        task = Task.new(task: tasks)
        # read
        puts "----------------------------"
        puts "現在抱えているTasksは以下です"
        puts "#{task.read}"

        # update
        puts "----------------------------"
        puts "もし編集するタスクがありましたら番号を記入してください。もしもうなければcを記入してください"

        id = gets.chomp.to_i

        unless id.is_a?(Integer)
          until id.is_a?(Integer)
            puts "----------------------------"
            puts "正しい番号を記入してください"
            puts "----------------------------"
            puts "もし編集するタスクがありましたら番号を記入してください。もしもうなければcを記入してください"
            id = gets.chomp.to_i
          end
        end

        puts "----------------------------"
        puts "もし編集するタスクがありましたら編集内容を記入してください。もしキャンセルする場合はcを記入してください"

        work = gets.chomp

        task.update(work,id)

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
    elsif num == 4
      puts "----------------------------"
      puts "本当に終了しますか？本当に終了するならnを入力してください。戻るならyを入力してください"
      a = gets.chomp
    else
      puts "正しい番号を入力してください"
    end
  # else
  #   # start
  #   date = Time.new
  #   puts "----------------------------"
  #   puts "現在時刻は#{date}"
  #
  #   # create
  #   puts "----------------------------"
  #   puts "やることを記入してください！"
  #   tasks = gets.chomp
  #   task = Task.new(task: tasks)
  #
  #   # read
  #   puts "----------------------------"
  #   puts "現在抱えているTasksは以下です"
  #   puts "#{task.read}"
  #
  #   # delete
  #   puts "----------------------------"
  #   puts "もし削除するタスクがありましたら番号を記入してください。もしもうなければcを記入してください"
  #
  #   d = gets.chomp.to_i
  #
  #   unless d.is_a?(Integer)
  #     until d.is_a?(Integer)
  #       puts "----------------------------"
  #       puts "正しい番号を記入してください"
  #       puts "----------------------------"
  #       puts "もし削除するタスクがありましたら番号を記入してください。もしもうなければcを記入してください"
  #       d = gets.chomp.to_i
  #     end
  #   end
  #
  #   task.delete(d)
  #
  #   # 確認
  #   puts "----------------------------"
  #   puts "まだ記入することがありましたらyを記入してください。もしもうなければnを記入してください"
  #
  #   a = gets.chomp
  #
  #   unless a == 'y'
  #     until a == 'y' || a == 'n'
  #       puts "----------------------------"
  #       puts "正しい番号を記入してください"
  #       puts "----------------------------"
  #       puts "まだ記入することがありましたらyを記入してください。もしもうなければnを記入してください"
  #       a = gets.chomp
  #     end
  #   end
  #
  # end
end
