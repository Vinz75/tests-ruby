def add(x,y)
    x+y
end

def subtract(x,y)
    x-y
end

def sum(array)
    array.inject(0, :+)
end

def multiply(x,y)
    x*y
end

def power(x,y)
    x ** y
end

def factorial(n)
    (1..n).reduce(1,:*)
end

puts factorial(10)