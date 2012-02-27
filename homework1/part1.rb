def palindrome? (string)
  str = string.downcase.gsub(/[^a-z]/,'')
  str  == str.reverse
end

#test
#p(palindrome?("A man, a plan, a canal -- Panama"))
#p(palindrome?("Madam, I'm Adam!"))
#p(palindrome?("Abracadabra"))
#p(palindrome?("OtTo"))

def count_words(string)
  #arr = string.downcase.gsub(/[^a-z ]/,'').split(' ')
  arr = string.downcase.scan(/[a-z]+\b/)
  hash = Hash.new()
  arr.each do |x| 
    hash[x]=arr.count(x)
  end
  hash
end

#p count_words("A man, a plan, a canal -- Panama")
#p count_words("Doo bee doo bee doo")
#p count_words("I Like Saas Course")