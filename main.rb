require 'sqlite3'

class Task
  attr_accessor :task

  def initialize(task:)
    self.task = task
    db = SQLite3::Database.new('task.db')
    db.execute('insert into tasks (name) values (?)', self.task)
  end

  def read
    db = SQLite3::Database.new('task.db')
    db.execute('select * from tasks') do |row|
      puts "タスク内容: #{row}"
    end
  end

  def delete(task)
    db = SQLite3::Database.new('task.db')
    sql = 'delete from tasks where id = ?'
    number = task
    db.execute(sql,number)
    if false
      puts "削除に失敗しました。"
    end
  end

  def update(task,id)
    db = SQLite3::Database.new('task.db')
    sql = 'update tasks set name = ? where id = ?'
    work = task
    number = id
    db.execute(sql,work,number)
    if false
      puts "削除に失敗しました。"
    end
  end

end

class Weather
  attr_accessor :number

  def initialize(number:)
    self.number = number
  end

  API_KEY = '5ad6c5ef4196a96b3ed9a1d487be0d17'
  URL = 'http://api.openweathermap.org/data/2.5/forecast'
  K = 273.15

  def observation
    if self.number == 1
      response = open(URL + "?q=tokyo,jp&APPID=#{API_KEY}")
      weather = JSON.parse(response.read, {symbolize_names: true})
      a = weather[:list][0][:weather][0][:main]
      temp = weather[:list][0][:main][:temp]
      puts "----------------------------"
      puts "天気は#{a}です"
      puts "気温は#{(temp - K).round}です"
    elsif self.number == 2
      response = open(URL + "?q=hiroshima-shi,jp&APPID=#{API_KEY}")
      weather = JSON.parse(response.read, {symbolize_names: true})
      a = weather[:list][0][:weather][0][:main]
      temp = weather[:list][0][:main][:temp]
      puts "----------------------------"
      puts "天気は#{a}です"
      puts "気温は#{(temp - K).round}です"
    elsif self.number == 3
      response = open(URL + "?q=kagoshima-shi,jp&APPID=#{API_KEY}")
      weather = JSON.parse(response.read, {symbolize_names: true})
      a = weather[:list][0][:weather][0][:main]
      temp = weather[:list][0][:main][:temp]
      puts "----------------------------"
      puts "天気は#{a}です"
      puts "気温は#{(temp - K).round}です"
    elsif self.number == 4
      response = open(URL + "?q=asahikawa,jp&APPID=#{API_KEY}")
      weather = JSON.parse(response.read, {symbolize_names: true})
      a = weather[:list][0][:weather][0][:main]
      temp = weather[:list][0][:main][:temp]
      puts "----------------------------"
      puts "天気は#{a}です"
      puts "気温は#{(temp - K).round}です"
    else
      puts "----------------------------"
      puts "正しい番号を入力してください！"
    end
  end
end
