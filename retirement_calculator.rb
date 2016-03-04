require 'date'

class RetirementCalculator
    attr_reader :years_left_to_retire, :year_for_retire
    def initialize(params)
        @year = DateTime.now.year
        @age = params[:age]
        @desiered_retire_age = params[:desiered_retire_age]
        @years_left_to_retire =  @desiered_retire_age - @age
        @year_for_retire = (@year + @years_left_to_retire)
    end
    
    def age_for_retire_message
        "You have #{years_left_to_retire} years left until you can retire."
    end
    
    def year_for_retire_message
        "It's #{@year}, so you can retire in #{@year_for_retire}."
    end
    
end