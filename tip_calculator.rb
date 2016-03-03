# Create a tip calculator. The program should prompt for a bill amount and a tip rate.
# The program must compute the tip and then display both the tip and the total amount of the bill.

# Example output: 
# What is the bill? $200
# What is the tip percentage? 15
# The tip is $30.00
# The total is $230.00

class TipCalculator
    attr_accessor :tip_percent, :bill
    attr_reader :tip, :total
    
    def initialize(bill=0, tip_percent=0)
        @tip = 0
        @bill = bill
        @tip_percent = tip_percent
        @total = 0
    end
    
    def calculate_tip
        @tip = @bill * (@tip_percent / 100.0)
        @total = @bill + @tip
    end
end
