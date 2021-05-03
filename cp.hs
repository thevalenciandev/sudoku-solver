-- Cartesian product
-- eg. cp [[1,2],[3,4],[5,6]] 
-- equal [[1,3,5],[1,3,6],[1,4,5],...]
cp :: [[a]] -> [[a]]
cp []       = [[]]
cp (xs:xss) = [y:ys | y<-xs, ys<-cp xss]
