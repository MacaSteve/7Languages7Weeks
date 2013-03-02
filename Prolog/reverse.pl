reverse([], []).
reverse(ReverseList, [Head|Tail]) :- reverse(TailReverse, Tail), append(TailReverse, [Head], ReverseList).