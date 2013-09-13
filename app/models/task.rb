require_relative '../../config/application'

class Task < ActiveRecord::Base
  def self.list
    self.all.each {|task| puts task}
  end

  def self.add(task)
    self.create!(name:task)
    puts "Added #{task} at #{Task.maximum(:id)}"
  end

  def self.complete(id)
    self.find(id).complete
  end

  def complete
    self.completed_at=DateTime.now
    self.save
    puts "Completed: #{name} at id #{id}"
  end

  def to_s
    "#{self.id} [#{self.completed_at.nil? ? ' ' : 'X'}] #{self.name}"
  end
end