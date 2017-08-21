# 5.6 Pairing: Nikita Ahuja & Gaby Ramirez


# IMPLEMENT A SIMPLE SEARCH

def prac_search(arr, num)
  i = 0
  num_present = false
  while i<arr.length
    if num == arr[i]
      puts i
      num_present = true
      break
    else
      i += 1
      nil
    end
    if i >= arr.length && num_present == false
      p "Entered value is not present in the array."
    end
  end
end

# arr = [1,2,3,4]
# prac_search(arr, 32)


# CALCULATE FIBONACCI NUMBERS

def fib_method(num)
  fib_arr = [0, 1]
  index = 2 #initialize at 2 since the first 2 indexes are taken
  num1= 0
  num2 = 1
  fib_num = 0
  if num == 1
    fib_arr = fib_arr[0]
  elsif num == 2
    fib_arr = fib_arr
  elsif num > 2
    while index < num
      fib_num = num1 + num2
      fib_arr << fib_num
      num1 = num2
      num2 = fib_num
      index += 1
    end
  end
  fib_arr
end

p fib_method(100)[-1] == 218922995834555169026


# PESUDOCODE:
# 1. If  0, nothing... there is no "0th" term. The number has to be greater than 0.
#2. If 1, the array has 0 in it
#3. If 2, the array has 0 and 1 in it.
#4. If 3, the array has 0, 1, and 0+1 in it.
#5. If 4, the array has 0, 1, 0+1, and (0+1) + 1 in it.
#6. If 5, the array has 0, 1, 1, 2, and 2+1 in it.
