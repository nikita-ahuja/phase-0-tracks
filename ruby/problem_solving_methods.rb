# IMPLEMENT A SIMPLE SEARCH
# Nikita Ahuja & Gaby Ramirez

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

arr = [1,2,3,4]
prac_search(arr, 32)