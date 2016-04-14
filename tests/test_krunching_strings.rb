# ruby -Ilib:test tests/test_krunching_strings.rb
require 'minitest/autorun'
require_relative '../krunching_strings.rb'

class TestKrunchingStriings < Minitest::Test
    def test_fail_when_string_is_more_than_60_chars
        assert_raises(ArgumentError){ KrunchingStrings.krunch('THIS IS A VERY LONG STRING SDSDS SD S GDFG DFGJNEKRN G NDF KGNDFK GNDF GNDFKG NDF NGDF NDFK NGDFK NGDFK GNDFGNSDFDHSBFHSDF HDFGKDFJ NGDFK NDGH ') }
    end
    def test_when_krunching_a_string
        assert_equal KrunchingStrings.krunch('RAILROAD CROSSING WITHOUT ANY RS'), 'AILOAD COING WITHOUT ANY'
    end
end