-- Transpose a matrix
-- Example:
-- | 1 2 3 |    | 1 4 7 |
-- | 4 5 6 | => | 2 5 8 |
-- | 7 8 9 |    | 3 6 9 |
transpose' :: [[a]] -> [[a]]
transpose' []       = []
transpose' ([]:xss) = transpose' xss
transpose' xss      = [head xs | xs<-xss] : transpose' (map tail xss)
