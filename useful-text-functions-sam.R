# nchar
# number of characters

# strplit
# splits by a pattern

# gsub
# This replaces all instances of "XX" with "YY" in "ZZ"
gsub("XX", "YY", "XX")

gsub("a", "XX", "abcdef")

# 1 or more a's
gsub("a+", "XX", "abcdefaabcdef")

# removes all capitals
gsub("[A-Z", "", "not that you are an adept in the science yourself, Mr. Darcy.")

# grep
# This detects patterns, and returns the place in the vector it was found.

# grepl does the same thing, but Returns TRUE or FALSE whether it was found or not.

