class Numeric
  @@currencies = {'dollar' => 1.000, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}

  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)     
      self * @@currencies[singular_currency]
    else
      super
    end
  end

  def in(obj)
    singular_currency = obj.to_s.gsub( /s$/, '')
    self / @@currencies[singular_currency]
  end
end

#test
p 1.dollar.in(:rupees)
p 10.rupees.in(:euro)



# b)
class String
  def palindrome?
    self.downcase.gsub(/[^a-z]/,'') == self.downcase.gsub(/[^a-z]/,'').reverse
  end
end

#test
p "otto".palindrome?()

# b)
module Enumerable
  def palindrome?
    self.to_a == self.to_a.reverse 
  end
end

#test

p [1,2,3,2,1].palindrome?
p [1,2,3,2,1,2].palindrome?
p ['a'].palindrome?
p ['a','b','A'].palindrome?