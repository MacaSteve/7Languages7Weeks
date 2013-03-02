smallest([Head], Head).
smallest([Head|Tail], TailMin) :- smallest(Tail, TailMin), TailMin =< Head.
smallest([Head|Tail], Head) :- smallest(Tail, TailMin), TailMin > Head.