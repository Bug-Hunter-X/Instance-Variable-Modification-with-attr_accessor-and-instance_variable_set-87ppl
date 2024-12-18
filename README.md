# Ruby Instance Variable Surprise!

This repo demonstrates a subtle issue in Ruby related to how `attr_accessor` interacts with direct instance variable manipulation using `instance_variable_set`.  While modifying instance variables directly using `instance_variable_set` might seem straightforward, it can lead to unexpected results when combined with accessor methods.  The example code shows that changes to an instance variable using `instance_variable_set` are not reflected by getter methods defined with `attr_accessor` unless the accessor is also explicitly updated.

## Reproduction

Clone this repository and run `bug.rb`.  You will observe that modifying the instance variable directly using `instance_variable_set` does not change the value returned by the getter method created using `attr_accessor`.