class Symbol(symbol: Char)
{
	def Print() = println(symbol)
}
object Naught extends Symbol('O')
object Cross extends Symbol('X')
object Empty extends Symbol(' ')

class Line(sym1: Symbol, sym2: Symbol, sym3: Symbol)
{
	val line = List(sym1, sym2, sym3)

	def AllTheSame = 
	{
		(line(0) == line(1)) &&
		(line(0) == line(2)) &&
		(line(1) == line(2))
	}

	def ContainsEmpty = 
	{
		line.exists(Empty)
	}

	def WinningLine = 
	{
		AllTheSame && 
		(FirstEmpty != true)
	}

	def apply(i: Int) : Symbol = line(i)
}

object EmptyLine extends Line(Empty, Empty, Empty)

class Board(row1: Line, row2: Line, row3: Line)
{
	val rows = List(row1, row2, row3)

	def apply(i: Int) : Line = rows(i)

	val columns = List(
		new Line(rows(0)(0), rows(1)(0), rows(2)(0)),
		new Line(rows(0)(1), rows(1)(1), rows(2)(1)),
		new Line(rows(0)(2), rows(1)(2), rows(2)(2)))

	def diagonals = List(
		new Line(rows(0)(0), rows(1)(1), rows(2)(2)),
		new Line(rows(0)(2), rows(1)(1), rows(0)(2)))

	def AllLineCombinations = rows ::: columns ::: diagonals
}

object EmptyBoard extends Board(EmptyLine, EmptyLine, EmptyLine)
	
