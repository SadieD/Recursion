def mergesort(ary)
  return ary if ary.size <= 1

  a, b = [], []
  ary.each_with_index { |x, i| i < (ary.size)/2 ? a << x : b << x }
  
  a = mergesort(a)
  b = mergesort(b)
  
  merge(a,b)
end

def merge(a, b, result = [])
  while !a.empty? and !b.empty?
    a[0] <= b[0] ? result << a.shift : result << b.shift
  end
  
  result << a.shift while !a.empty?
  result << b.shift while !b.empty?
  
  result
end

unsorted = []
20.times { unsorted << rand(99) }

print "Unsorted: ", unsorted, "\n"
print "Sorted: ",mergesort(unsorted), "\n"
