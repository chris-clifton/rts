# RTS Labs: Coding Challenge
by: Chris Clifton

## Instructions
- Navigate to [repo](https://github.com/chris-clifton/rts)
- Clone locally using `git clone git@github.com:chris-clifton/rts.git`
- Navigate to directory in command line
- Run tests for first two challenges with Minitest suite using `ruby challenge_test.rb`
- The answer to the third question is the last portion of this README.

## Requirements and Discussion
### First Challenge
> #1  Print the number of integers in an array that are above the given input and the number that are below, e.g. for the array [1, 5, 2, 1, 10] with input 6, print “above: 1, below: 4”.

For the first challenge, I ended up writing two methods.  The first, which is commented out, is the short and sweet version that only calculates the `above` and `below` values, as directed in the question, and doesn't handle any edge cases.  In order to test this method, uncomment the `skip` on line 19 of `challenge_test.rb`, since equal values are included in these tests throw off the `below` values.

The second version, is slightly different in that it accounts for an obvious edge case- if an integer in the array is the same as the input integer.  The method will track all occurrences of `equal` numbers so the program doesn't raise an exception, but it doesn't do anything with them.

I didn't want to go nuts accounting for every possible edge case, but if I were to rewrite it to consider another, I would write the method to handle non-digit input in the array.  Upon request, I'd be happy to submit that version of the method.

I felt like the second method was the right one to hand in due to how likely an occurrence of the same number would be and the amount of additional code didn't seem very significant.

### Second Challenge
> #2  Rotate the characters in a string by a given input and have the overflow appear at the beginning, e.g. “MyString” rotated by 2 is “ngMyStri”

The `rotate_string` method is pretty straightforward.  My only notes are as follows:
  - If modifying the original string were off the table, I would have used `String#dup` and held a copy of the original string in another local variable and called the `.slice` method on that.
  - If I were to rewrite to consider an edge case, I would consider tackling what to do with whitespace first.

## Written Question
>#3  If you could change 1 thing about your favorite framework/language/platform (pick one), what would it be?

If I could change anything with Ruby, I think I'd change all methods in the standard library that are destructive to always end with a bang `!`.  I understand why Matz/Ruby only adds the bang! to methods that have two versions- one that doesn't mutate the original object and one that does mutate the original object- which is to let the programmer know that they are using the "more dangerous" version of the method. 

What I would like, because I think it would add uniformity and even more ease of use, is that *any* method that performs a destructive action would get the bang.

It's pretty easy to tell that if you call `.delete` on an array you are mutating that array, but some methods such as `.take` and `.pop` are a little less clear, even if they don't have a non-destructive version.
