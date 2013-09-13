require_relative 'config/application'
require_relative 'app/models/task'

command = ARGV[0]
param = ARGV[1]

param.nil? ? Task.send(command) : Task.send(command,param)