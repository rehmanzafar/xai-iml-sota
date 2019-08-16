#install.packages("arxiv", dependencies = T)
library("aRxiv")

# interpretability in the stat.* and cs.* 
results <- arxiv_search(query = 'ti:interpretable AND (cat:stat* OR cat:cs*)',  
                  limit=100, sort_by = "submitted", ascending = FALSE) # AND submittedDate:[201906240000 TO 201906252400]',
results[,c("id", "submitted", "title")]
