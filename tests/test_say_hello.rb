# ruby -Ilib:test tests/test_say_hello.rb
require "minitest/autorun"
require_relative "../say_hello.rb"

class TestSayHello < Minitest::Test
    def setup
        @greeting = Greeting.new
    end
    
    def test_the_greeting
        @greeting.name = 'Brian'
        @greeting.build_greeting
        assert_equal @greeting.greeting, "Hello, Brian, Nice to meet you!"
    end
end