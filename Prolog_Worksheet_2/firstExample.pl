likes(john, fred).
likes(john,beer).
likes(john,john).
likes(mary,beer).
likes(john,X) :- likes(X,beer).