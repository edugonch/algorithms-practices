# Taken from: Exercise for programmers: 57 Challenges to Develop Your Code Skills
# Create a program that prompts for your name and prints a greeting using your name
# Constraint:
# * Keep the input, string concatenation, and output separate
# Input example
# What is your name? Brian
# Hello, Brian, Nice to meet you!

class Greeting
    attr_accessor :name
    attr_reader :greeting
    
    def initialize()
        @name = ''
    end
    
    def build_greeting
        @greeting = "Hello, #{@name}, Nice to meet you!"
    end
end