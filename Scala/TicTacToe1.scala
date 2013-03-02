class Symbol(symbol: char)
{
	def Naught = Symbol('O')
	def Cross = Symbol('X')
	def Empty = Symbol(' ')
}

class Board
{
	val board = 
		List
		(
			List(Empty, Empty, Empty),
			List(Empty, Empty, Empty),
			List(Empty, Empty, Empty)
		)

	def Insert(x: int, y: int, symbol: Symbol)
	{
		List[x].[y] = symbol
	}

	def Print()
	{
		board.foreach{line => PrintLn(line)}
	}

	def PrintLine(line: List)
	{
		line.foreach {symbol => print(symbol.char)}
		print(line)
	}
}

var board = new Board

board.Print

