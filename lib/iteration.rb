def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  counter = 0 
  ans = []
  
  while counter < src.size do 
    temp = "I love #{src[counter][0]} and #{src[counter][1]} on my pizza"
    ans.push(temp)
    counter += 1
  end
  ans
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  ans = []
  counter = 0 
  while counter < src.size do 
    if src[counter][0] < src[counter][1] 
      max = src[counter][1]
    elsif src[counter][0] > src[counter][1]
      max = src[counter][0]
    else
      max = src[counter][0]
    end
    ans.push(max)
    counter += 1
  end
  ans
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  total = 0
  counter = 0 
  while counter < src.size do
    sum = src[counter][0] + src[counter][1]
    if sum % 2 == 0 
      total += sum
    end
  end
  total
end
