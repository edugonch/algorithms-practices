# ruby -Ilib:test tests/test_retirement_calculator.rb
# Taken from: Exercise for programmers: 57 Challenges to Develop Your Code Skills
# Create a program that determines how many yeras you have left until retirement and the year you can retire.
# Example Output
# What is your current age? 25
# At what age would you like to retire? 65
# You have 40 years left until you can retire.
# It's 2015, so you can retire in 2055.

require 'date'
require "minitest/autorun"
require_relative "../retirement_calculator.rb"

class TestRetirementCalculator < Minitest::Test 
    
    def setup
        @rc = RetirementCalculator.new(age: 25, desiered_retire_age: 65)
    end
    
    def test_age_when_i_get_retire
        assert_equal @rc.years_left_to_retire, 40
    end
    
    def test_year_i_get_retire
        year = DateTime.now.year
        assert_equal @rc.year_for_retire, (year + (65-25))
    end
    
    def test_age_for_retire_message
        assert_equal @rc.age_for_retire_message, 'You have 40 years left until you can retire.'
    end
    
    def test_year_for_retire_message
        year = DateTime.now.year
        assert_equal @rc.year_for_retire_message, "It's #{year}, so you can retire in #{year + (65-25)}."
    end
end