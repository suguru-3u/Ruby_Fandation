require 'sqlite3'

# testというデータベースを作成
db = SQLite3::Database.new('task.db')

# idとnameを持つtasksテーブルを作成するSQL
# sql = <<-SQL
#   create table tasks (
#     id integer primary key,
#     name text
#   );
# SQL

# tasksテーブルを作成する
# db.execute(sql)

# テーブルにレコードを書き込む
db.execute('insert into tasks (name) values (?)', 'sample1')
db.execute('insert into tasks (name) values (?)', 'sample2')

# selectでデータを出力する
db.execute('select * from tasks') do |row|
  p row
end
