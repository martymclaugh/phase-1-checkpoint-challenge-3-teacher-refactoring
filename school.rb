class School

  def offer_high_five
    "High five!"
  end
   attr_accessor :name
end

module Teachins
	attr_reader :age, :salary, :phase, :target_raise

	def set_phase(num)
    	@phase = num
    	"Cool, I've always wanted to teach phase #{num}!"
  	end

  	def salary=(new_salary)
    	puts "This better be good!"
    	@salary = new_salary
  	end

  	def receive_raise(raise)
    	@salary += raise
  	end
end
