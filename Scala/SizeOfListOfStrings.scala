val myList = List("123", "1234", "12345")

val size = myList.foldLeft(0)((size, value) => size + value.size)

println(size)
