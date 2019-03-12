# def reverse(string)
#   i = 0 
#   j = string.length - 1
#   while i < j
#     temp = string[i]
#     string[i] = string[j]
#     string[j] = temp
#     i += 1
#     j -= 1
#   end
#   return string
# end 

# p reverse("tiffany")


# Function that counts the letter a in a string
# count of a is returned


# def letter_a(string)
#   count = 0
#   string.split("").each do |char|
#     if char == "a"
#       count += 1
#     end
#   end
#   return count
# end

# puts letter_a("anaconda")

# def array_match(array)
#   n = 3
#   i = 0
#   array.each do |n|
#     if [i] == n
#       p [i]
#     else
#       p nil
#     end
#     i += 1
#   end
#   return n
# end

# p array_match([3,2,3,4,3])

# hsh = { at_at: "att", attr: "attra", att: "attr" }
# p hsh.keys.map(&:to_s).sort_by(&:length)


-> (a) {p a}["Hello world"]