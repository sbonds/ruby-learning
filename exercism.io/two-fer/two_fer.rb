=begin
When running the test on a blank file I got:

$ ruby two-fer/two_fer_test.rb --verbose
Run options: --verbose --seed 31110

# Running:

TwoFerTest#test_no_name_given = 0.00 s = E
TwoFerTest#test_another_name_given = 0.00 s = S
TwoFerTest#test_a_name_given = 0.00 s = S

Finished in 0.001367s, 2194.5225 runs/s, 0.0000 assertions/s.

  1) Error:
TwoFerTest#test_no_name_given:
NameError: uninitialized constant TwoFerTest::TwoFer
Did you mean?  TwoFerTest
    two-fer/two_fer_test.rb:8:in `test_no_name_given'

  2) Skipped:
TwoFerTest#test_another_name_given [two-fer/two_fer_test.rb:17]:
Skipped, no message given

  3) Skipped:
TwoFerTest#test_a_name_given [two-fer/two_fer_test.rb:12]:
Skipped, no message given
=end

# This line:
#  NameError: uninitialized constant TwoFerTest::TwoFer
# Suggests we need a class "TwoFerTest" with a method TwoFer

class TwoFerTest
  def TwoFer
  end
end