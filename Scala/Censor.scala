import scala.io.Source

trait Censor
{
	var wordReplacements = Map("Shoot" -> "Pucky", "Darn" -> "Beans")

	def censorWords(words: String) : String = 
		wordReplacements.foldLeft(words)((censoredWords, keyVal) => censoredWords.replaceAll(keyVal._1, keyVal._2))

	def loadReplacements(filename: String) =
	{
		val file = Source.fromFile(filename)
		wordReplacements =  file.getLines.foldLeft(wordReplacements)((replacements, line) => 
		{
			val words = line.split(" -> ")
			replacements ++ Map(words(0) -> words(1))
		})
	}
}

class CensorSentence(sentence: String) extends Censor
{
	override def toString = censorWords(sentence)
}

val myCensorWords = new CensorSentence("Where the Hell did I put my Darn Balls!")
myCensorWords.loadReplacements("CensorWords.txt")
println(myCensorWords)
