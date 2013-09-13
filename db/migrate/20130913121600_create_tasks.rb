require_relative '../../config/application'

class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string    :name
      t.datetime  :completed_at
      t.datetime  :created_at
    end
  end
end