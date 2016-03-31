#1. Dedupe 
#
# Redundancy in this world is pointless. Let’s get rid of all redundancy. 
# For example AAABB is redundant. Why not just use AB? Given a string, remove all consecutive letters that are same. 
#
# Input: The first line in the data file is an integer that represents the number of data sets to follow. 
# Each data set is a single string. The length of the string is less than 100. Each string only contains uppercase alphabetical letters.
#
# Output: Print the deduped strings. 
# 
# Sample Input File: 
# 3 
# ABBBBAACC 
# AAAAA 
# ABC 

# Sample Output: 
# ABAC 
# A 
# ABC

module Dedup
    def self.filter(str)
        selected_char = nil
        str.chars.reject{|x| x == selected_char ? (selected_char = x; true) : (selected_char = x; false) }.join()
    end
end