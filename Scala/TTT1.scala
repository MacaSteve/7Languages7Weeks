class Symbol(symbol: Char)
{
	def Print() = println(symbol)
}
object Naught extends Symbol('O')
object Cross extends Symbol('X')
object Empty extends Symbol(' ')

class Line(sym1: Symbol, sym2: Symbol, sym3: Symbol)
{
	val line = new List(sym1, sym2, sym3)

	def AllTheSame = 
	{
		(line(0) == line(1)) &&
		(line(0) == line(2)) &&
		(line(1) == line(2))
	}

	def FirstEmpty = 
	{
		line(0) == Empty
	}

	def WinningLine = 
	{
		AllTheSame && 
		(FirstEmpty != true)
	}

	def valueAt(index: Int) = Symbol
	{
		line(index)
	}
}

object EmptyLine extends Line(Empty, Empty, Empty)

class Board(row1: Line, row2: Line, row3: Line)
{
	val board = new List(row1, row2, row3)

	val col1 = new Line(List(Empty, Empty, Empty))
	
	val col11 = rows(0)
	val mySym = rows(0).valueAt(0) 
	val col111 = new Line(List(mySym, mySym, mySym))
	
	val cols = List(
		new Line(List(Empty, Empty, Empty)),
		new Line(List(Empty, Empty, Empty)),
		new Line(List(Empty, Empty, Empty)))

/**
	val col11 = new Line(List(rows(0).valueAt(0), rows(0).valueAt(1), rows(0).valueAt(2)))
	val columns = List(
		new Line(List(rows(0)(0), rows(0)(1), rows(0)(2))),
		new Line(List(rows(1)(0), rows(1)(1), rows(1)(2))),
		new Line(List(rows(2)(0), rows(2)(1), rows(2)(2))))

	def diagonals = List(
		Line(row(0)(0), row(1)(1), row(2)(2)),
		Line(row(0)(2), row(1)(1), row(2)(0)))

	def AllLineCombinations = rows :: columns :: diagonals
*/
}

object EmptyBoard extends Board(List(EmptyLine, EmptyLine, EmptyLine))
	
