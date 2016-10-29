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

# -----------------------------------------------
# Method 3: Uniques
# -----------------------------------------------
# SOLUTION 1: Add values to a new array if that value is not already present in the new array. 

def uniques (itemArray)
	uniqueArray = []
	
	# Check whether each item is already present in the array
	# If it isn't, add it to the array. 

	itemArray.each do |item|
		while uniqueArray.include?(item) != true
			uniqueArray << item
		end
	end

	return uniqueArray
end

# print uniques([1,5,"frog", 2,1,3,"frog"])


# SOLUTION 2: Compare the origianl array with a duplicate of the original array to create a third array containing all of the values that were present in both the original and the duplicate, but removes any duplicate values. 

def uniques (itemArray)
	duplicateArray = itemArray
	uniqueArray = duplicateArray & itemArray
end

 # print uniques([1,5,"frog", 2,1,3,"frog"])

