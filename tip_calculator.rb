# Create a tip calculator. The program should prompt for a bill amount and a tip rate.
# The program must compute the tip and then display both the tip and the total amount of the bill.

# Example output: 
# What is the bill? $200
# What is the tip percentage? 15
# The tip is $30.00
# The total is $230.00

class TipcCalculator
    attr_accessor :tip_percent, :bill
    attr_reader :tip, :total
    
    def initialize(bill, tip_percent)
        @tip = 0
        @bill = bill
        @tip_percent = tip_percent
        @total = 0
    end
    
    def calculate_tip
        puts "@tip_percent #{@tip_percent}"
        @tip = @bill * (@tip_percent / 100)
        @total = @bill + @tip
    end
end

print "What is the bill? $"
bill = gets.strip.to_f
print "\nWhat is the tip percentage? "
tip_percent = gets.strip.to_f

tc = TipcCalculator.new(bill, tip_percent)
tc.calculate_tip

puts "The tip is $ #{tc.tip}"
puts "The total is $ #{tc.total}"
