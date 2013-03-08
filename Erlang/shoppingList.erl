-module(shoppingList).
-export([totalPrice/0]).
-export([totalPrice/1]).

totalPrice() -> 
	List = [{pencil,4,1.5},{pen,2,2.5},{book,5,3.25}],
	totalPrice(List).
	
totalPrice(List) -> [{Item, Quantity * Price} || {Item, Quantity, Price} <- List].
