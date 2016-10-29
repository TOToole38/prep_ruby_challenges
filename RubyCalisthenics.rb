# -----------------------------------------------
# Method 1: Power
# -----------------------------------------------

def power(base, exponent)
	result = 1
	exponent.times do 
		result *= base 
	end
	return result
end


# -----------------------------------------------
# Method 2: Factorial
# -----------------------------------------------

def factorial (num)
	counter = 1
	product = 1
	while counter <= num do 
		product *= counter 
		counter += 1
	end
	return product
end