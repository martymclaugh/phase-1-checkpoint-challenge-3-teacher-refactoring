require_relative 'teachins'
require_relative 'school'
class Teacher < School
  include Teachins
  attr_reader :performance_rating

  def initialize(options={})
    @phase = 3
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    @target_raise = 1000
  end
end
