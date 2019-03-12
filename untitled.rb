def reverse(string)
  i = 0 
  j = string.length - 1
  while i < j
    temp = string[i]
    string[i] = string[j]
    string[j] = temp
    i += 1
    j -= 1
  end
  return string
end 

p reverse("tiffany")