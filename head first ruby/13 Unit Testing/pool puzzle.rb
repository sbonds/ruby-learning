___ 'minitest/autorun'

class TestArray < ____
    def ____
        @array = ['a','b','c']
    end

    def test_length
        ___ (3, ___.length)
    end

    def test_last
        assert_equal(___,@array.last)
    end

    def test_join
        ____('a-b-c', @array.join('-'))
    end
end

=begin
Pool:

first
assert_equal
'c'
teardown
assert
@array
'a'
Minitest::Test
setup
require
test
assert_equal

Expected output:
(all three tests pass)
=end