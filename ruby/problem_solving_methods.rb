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

#p fib_method(100)[-1] == 218922995834555169026


# PESUDOCODE:
# 1. If  0, nothing... there is no "0th" term. The number has to be greater than 0.
#2. If 1, the array has 0 in it
#3. If 2, the array has 0 and 1 in it.
#4. If 3, the array has 0, 1, and 0+1 in it.
#5. If 4, the array has 0, 1, 0+1, and (0+1) + 1 in it.
#6. If 5, the array has 0, 1, 1, 2, and 2+1 in it.


# SORT AN ARRAY - Bubble Sort

#The bubble sort algorithm works by looking at each value and then the value next to it. If the values are not sorted chronologically, it swaps them, then moves on and continues this until it reaches the end of the list. That is one iteration of the bubble sort algorithm. Then, it will reiterate and continue reiterating until it is done.

# SORTING PSEUDOCODE
# 1. Look at the first value in the list (index n)
# 2. Look at the second value in the index (index n+1)
# 3. If the values are in order chronologically
# -move on to looking at the second value and the value next to it  (index n+1 now becomes index n, and index n+1 is the value next to it.)
#   If the values are NOT in orer chronologically,
# -swap the values. The value at index n should now take index n+1, and the value at index n+1 should take the value of index n.
# 4. Continue until you have completed the whole list.
# 5. Reiterate.

def bubblesort(array)
  #counter = 0
  n = array.length
  loop do
    #a = 0
    swap = false
    #while counter < n-1
    (n-1).times do |a|
      if array[a] > array[a+1]
        array[a], array[a+1] = array[a+1], array[a]
        swap == true
        #counter += 1
       # else
       #  swap == false
        #counter +=1
      # else
      #   swap == false
      #   break
      end #end if statement
    end #end block
    if swap == false #after looping through n-1 times
      break
    end #end if statement
  end #end loop
   p array
end

#Initially tried to use a while loop with a counter. I found that to get very confusing to achieve what I wanted - which was iteating through the loop n-1 times. For this reason, after looking through methods and reviewing, I decided to implement the times method.

array = [2,1,4,3]
array2 = [8,1,9,6]
#did not work for second array.... will continue working to figure this out

bubblesort(array2)





