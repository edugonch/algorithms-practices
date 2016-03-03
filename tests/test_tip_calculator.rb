# ruby -Ilib:test tests/test_tip_calculator.rb
require "minitest/autorun"
require_relative "../tip_calculator.rb"
class TestTipCalculator < Minitest::Test
    def setup
        @tip_calculator = TipCalculator.new(200, 15)
    end
    
    def test_that_calculates_the_correct_tip
        @tip_calculator.calculate_tip
        assert_equal 30, @tip_calculator.tip
        assert_equal 230, @tip_calculator.total
    end
end