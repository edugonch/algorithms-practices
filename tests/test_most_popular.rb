# ruby -Ilib:test tests/test_most_popular.rb
require "minitest/autorun"
require_relative "../most_popular.rb"

class TestMostPopular < Minitest::Test 
    
    def test_when_find_in_string
        assert_equal MostPopular.find('consume hot tea'), '2, oet'
    end
    
end

