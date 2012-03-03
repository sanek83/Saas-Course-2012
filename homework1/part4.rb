class Dessert
  attr_accessor :name, :calories
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  def healthy?
    calories()< 200
  end
  
  def delicious?
    true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  
  def initialize(name, calories, flavor)
    @name = name
    @calories = calories
    @flavor = flavor
  end
  
  def delicious?
    not(@flavor == 'black licorice')
  end
end


j = JellyBean.new('a','200','black')

p j.delicious?()