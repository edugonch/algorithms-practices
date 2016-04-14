# ruby -Ilib:test tests/test_string_differences.rb
require 'minitest/autorun'
require_relative '../string_differences.rb'

class TestStringDifferences < Minitest::Test
    def test_when_match_differences_in_string
        assert_equal StringDifferences.find('AEIOU', 'BCEISTU'), ['BCST', 'AO']
    end
    
    def test_when_there_is_no_replace_in_one_string
        assert_equal StringDifferences.find('WXYZ', 'Y'), ['', 'WXZ']
    end
end