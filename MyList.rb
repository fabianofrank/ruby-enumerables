require MyEnumerable.rb

class MyList
  include MyEnumerable

  def initialize( list )
    @list = list
  end

  def each
    for i in @list do
      yields i
    end
  end

end

list = MyList.new(1, 2, 3, 4)

# Test #all?
list.all? {|e| e < 5}
#=> true
irb> list.all? {|e| e > 5}
#=> false

# Test #any?
irb> list.any? {|e| e == 2}
#=> true
irb> list.any? {|e| e == 5}
#=> false

# Test #filter
list.filter {|e| e.even?}
#=> [2, 4]