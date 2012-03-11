class CartesianProduct
  include Enumerable
  def initialize(*args)
    @arr_1 = args[0]
    @arr_2 = args[1]
  end
  def each  
    @arr_1.each do |a|
      @arr_2.each do |b|
        yield [a,b]
      end     
    end     
    end #while def each
  end #class

c = CartesianProduct.new([:a,:b], [4,5])
c.each { |elt| puts elt.inspect }
# [:a, 4]
# [:a, 5]
# [:b, 4]
# [:b, 5]

c = CartesianProduct.new([:a,:b], [])
c.each { |elt| puts elt.inspect }
# (nothing printed since Cartesian product
# of anything with an empty collection is empty)