(defn big [st n]
	(> (count st) n) )
	
(defn colType [col] (
	if (list? col) :list (
		if (vector? col) :vector (
			if (map? col) :map
		)
	)
))
