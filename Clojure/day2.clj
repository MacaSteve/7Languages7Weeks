; out of the book
(defmacro unlessOrg [test body]
	(list 'if (list 'not test) body))

; Do: unless macro with else statement
(defmacro unless [test trueBody falseBody] 
	(list 'if (list 'not test) trueBody falseBody))