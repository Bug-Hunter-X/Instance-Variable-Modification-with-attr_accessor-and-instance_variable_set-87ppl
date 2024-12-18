```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

end

my_object = MyClass.new(10)
puts my_object.value #=> 10

my_object.instance_variable_set(:@value, 20) 
puts my_object.value #=> 20

#This works fine

class MyClass2
  attr_accessor :value
end

my_object2 = MyClass2.new
my_object2.value = 10
puts my_object2.value #=> 10

#But this won't print 20 because of the way instance variables are handled in Ruby. 
my_object2.instance_variable_set(:@value,20) #This line modifies the instance variable directly but it doesn't update the value using the attr_accessor. 
puts my_object2.value #=> 10
```