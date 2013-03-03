trait Censor
{
	val wordReplacements = Map("Shoot" -> "Pucky", "Darn" -> "Beans")

	def censorWords(words: String) : String = 
		wordReplacements.foldLeft(words)((censoredWords, keyVal) => censoredWords.replaceAll(keyVal._1, keyVal._2))
}

class CensorSentence(sentence: String) extends Censor
{
	override def toString = censorWords2(sentence)
}

val myCensorWords = new CensorSentence("Darn Shoot")
println(myCensorWords)
