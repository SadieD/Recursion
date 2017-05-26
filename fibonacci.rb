def fib(number, result = [0,1])
  if number > 0
    (1..number-2).each { |x| result << result[x] + result[x - 1]}
  end
  result
end

def fibs_rec(final, result = [0,1])
  result << result[result.length - 1] + result[result.length - 2]
  fibs_rec(final, result) if result.length < final
  result
end

puts fib(11)

puts '------'

puts fibs_rec(11)
