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

This line:
 NameError: uninitialized constant TwoFerTest::TwoFer
Suggests we need a class "TwoFerTest" with a method TwoFer

New error:
 two-fer/two_fer_test.rb:5:in `<main>': superclass mismatch for class TwoFerTest (TypeError)

Based on Google search
 https://stackoverflow.com/questions/5512023/ruby-on-rails-3-superclass-mismatch-for-class
This means we have a duplicate class. Perhaps taking "Test" off the end is what we want.
Seems a bit vague though...

New error:

  1) Error:
TwoFerTest#test_no_name_given:
NoMethodError: undefined method `two_fer' for TwoFer:Class
    two-fer/two_fer_test.rb:8:in `test_no_name_given'

That implies we're looking to define that undefined method. Consider it done!

Hmm... still undefined. Maybe it needs to be a class method instead of an
instance method?

https://stackoverflow.com/questions/35965231/ruby-undefined-method-for-class-method 

Hey, that was it! New error:

  1) Failure:
TwoFerTest#test_no_name_given [two-fer/two_fer_test.rb:8]:
Expected: "One for you, one for me."
  Actual: nil

This was expected since I haven't actually returned anything yet.

=end

# TODO: Ask if there's a better way to determine the desired class name from the
# test failure output.

class TwoFer
  def self.two_fer
    "One for you, one for me."
  end
end