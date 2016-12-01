# 1 -- Max number of chars in a line
prideprejudice %>%
	nchar %>%
	.[.>0] %>%
	max