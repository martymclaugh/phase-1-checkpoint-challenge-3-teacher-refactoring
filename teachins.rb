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

    def good_rating
      response = "Yay, I'm a great employee!"
    end

    def bad_rating
      response = "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
    end

    def set_performance_rating(rating)
      if self.class == ApprenticeTeacher
        if rating > 80
          receive_raise(@target_raise)
          good_rating
        else
          bad_rating
        end
      else
        if rating > 90
          good_rating
          receive_raise(@target_raise)
        else
          bad_rating
        end
      end
    end

    def teach_stuff
      response = ""
      if self.class == ApprenticeTeacher
        response += "Listen, class, this is how everything works. *drops crazy knowledge bomb* "
      else
        response += "Listen, class, this is how everything works, fo SHO! *drops flat-out insane knowledge bomb* "
      end
      response += "... You're welcome."
      if self.class == Teacher
        response += " *saunters away*"
      end
      response
    end

end