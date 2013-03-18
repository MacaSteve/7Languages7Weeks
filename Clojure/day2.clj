; Do: unless macro with else statement
(defmacro unless 
	([test body]
		(list 'if (list 'not test) body))
	([test trueBody falseBody] 
		(list 'if (list 'not test) trueBody falseBody)))

; Write a type using defrecord that implments a protocol.
(defprotocol Mouse
	(cords [this])
	(left [this a])
	(right [this a])
	(up [this a])
	(down [this a])
)

(defn move
	[cord amount]
	(+ cord amount)
)
	
(defrecord SimpleMouse [x y]
	Mouse
	(cords [_] (println (str "X Cord: " x "; Y Cord: " y)))
	(right [_ a] (SimpleMouse. (move x a) y))
	(left [_ a] (SimpleMouse. (move x (- 0 a)) y))
	(up [_ a] (SimpleMouse. x (move y a)))
	(down [_ a] (SimpleMouse. x (move y (- 0 a))))
)