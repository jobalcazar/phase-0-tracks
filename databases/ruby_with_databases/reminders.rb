require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("reminders.db")

create_table1 = <<-SQL
  CREATE TABLE IF NOT EXISTS reminder(
    id INTEGER PRIMARY KEY,
    assignment VARCHAR(255),
    completed BOOLEAN,
    user_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES user(id)
  )
SQL

create_table2 = <<-SQL
  CREATE TABLE IF NOT EXISTS user(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL

def clear_reminders
  db.execute("DROP TABLE reminder")
end

def add_reminder(hw,incomplete,num)
  db.execute("INSERT INTO reminder(assignment,completed,user_id) VALUES (?,?,?)",
  [hw,incomplete,num])
end

def update_completion(hw, finished,num)
  db.execute("UPDATE reminder(assignment, completed, user_id) Values (?,?,?)",
  [hw,finished, num])
end

# def add_user(name,num_table)
#   db.exceute("INSERT INTO user(name) VALUES (?)", [name]))
# end

def display_reminders()
  db.execute("SELECT user.name, reminder.assignment, reminder.assignment,
  reminder.completed
  FROM user
  LEFT JOIN reminder
  WHERE user.reminder_id=reminder.id")
end

db.exceute(create_table1)
db.exceute(create_table2)

x=Faker::Name.name
add_user(x , 1)
add_reminder("Finish math secition 3.2",false, 1)



#db.execute("INSERT INTO reminder(assignment,completed) VALUES ('do math hw', false)")
