# ruby -Ilib:test tests/test_dedup.rb
require "minitest/autorun"
require_relative "../dedup.rb"

class TestDedup < Minitest::Test 
    
    def test_when_input_ABBBBAACC
        assert_equal Dedup.filter('ABBBBAACC'), 'ABAC'
    end
    
    def test_when_input_AAAAA
        assert_equal Dedup.filter('AAAAA'), 'A'
    end
    
    def test_when_input_ABC
        assert_equal Dedup.filter('ABC'), 'ABC'
    end
end

