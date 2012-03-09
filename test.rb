class C
end
class B < C
end

class A < B

end

a = A.new()
b = B.new()

p a.class.ancestors.include?(C)
#== b.class