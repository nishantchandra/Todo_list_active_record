require 'spec_helper'

describe Task do
  Task.delete_all
  raise "Oh noes! Not all records were destroyed" unless Task.all.empty?
  puts "Make a new task"
  @task = Task.create(name:'This is a test')
  puts @task
  puts "Complete the task"
  @task.complete
  puts "Make a new task"
  @task2 = Task.create(name:'This is only a test')
  puts @task
  puts "Show the Task list"
  puts Task.list
  p @task.id
  puts "Destroy the task at the class level"
  Task.delete(@task.id)
end
