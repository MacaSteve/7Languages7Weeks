class Person(firstName: String)
{
	println("Outer")
	def talk() = println("Hi from " + firstName)
}

val bob = new Person("Bob")
bob.talk
