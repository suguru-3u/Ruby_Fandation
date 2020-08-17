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

end
