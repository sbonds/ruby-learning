require 'minitest/autorun'

class ExerciseTests < Minitest::Test
    def test_apples
        # Expecting PASS
        assert_equal('apples','apples')
    end

    def test_includes_3
        # Expecting PASS
        assert_includes([1,2,3,4,5],3)
    end

    def test_string_42
        # Expecting FAIL
        assert_instance_of(String,42)
    end

    def test_includes_d
        # Expecting FAIL
        assert_includes(['a','b','c'], 'd')
    end

    def test_runtime_error_raised
        # Expecting PASS
        assert_raises(RuntimeError) do
            raise "Oops!"
        end
    end

    def test_apples_equals_oranges
        # Expecting FAIL
        assert('apples' == 'oranges')
    end

    def test_standarderror_raised
        # Hmm... tricky... I'll say FAIL since ZeroDivisionError
        # is more specific than StandardError even though I think
        # ZeroDivisionError is a child of StandardError
        assert_raises(StandardError) do
            raise(ZeroDivisionError, "Ooops!")
        end
    end

    def test_empty_hash
        # Expecting PASS
        assert_instance_of(Hash, {})
    end
end