require_relative 'teachins'
require_relative 'school'
class ApprenticeTeacher < School
  include Teachins

  def initialize(options={})
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    @target_raise = 800
    @phase = 3
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
