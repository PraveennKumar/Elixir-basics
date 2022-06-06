#  Strings--------------------------------------------------------------------------------------
str = "Praveen"
IO.puts(str)
# Strings (here we Taking input and making it output using promts)----

# here gets is prompt just like JS where we get input from user
name = IO.gets("what is your name?")
age = IO.gets(" And what is your age?")

# puts used for output
IO.puts("Hello, #{String.trim(name)}! You're #{String.trim(age)}? That's so old!")

name = IO.gets("What is your name?")
place = IO.gets("Which place do you live?")
object = IO.gets("Which object in your hand?")

IO.puts(
  "#{String.trim(name)}! lived in #{String.trim(place)} and #{String.trim(object)} in his hand."
)

# Interpolation---------

name = "my name is #{str}"
IO.puts(name)

# list-----------------------------------------------------------------------------------------------
IO.puts(List.first([1, 4, 5, 7, 8]))
IO.puts(List.last([1, 4, 5, 7, 8]))
# list-( Enumerating the enumerables)-------
cities = ["vienna", "melbourne", "osaka", "calgary", "sydney"]
IO.puts(Enum.each(cities, &IO.puts/1))

# maps in list---------------------------------------------------------------

those_who_are_assembled = [
  %{"name" => "Izzy", "age" => "30ish", "gender" => "Female"},
  %{"name" => "The Author", "age" => "30ish", "gender" => "Male"},
  %{"name" => "The Reader", "age" => "Unknowable", "gender" => "Unknowable"}
]

IO.puts(Enum.at(those_who_are_assembled, 0)["name"])

# functions------------------------------------------------------

c_to_f = fn cel -> cel * 1.8 + 32 end
IO.puts(c_to_f.(20))
IO.puts(c_to_f.(40))

# Multiple-argument functions----------

greeting = fn name, age, gender, role ->
  "Hello #{name}!, you are #{age} years old and you are a #{gender}. you are a #{role} "
end

IO.puts(greeting.("Aditya", 10, "male", "Studios student"))

# Q.   Make a function which returns the number of seconds in the specified amount of days. For example, seconds.(2) should tell us how many seconds there are in 2 days.----------

days_in_sec = fn days -> days * 86400 end
IO.puts(days_in_sec.(2))
IO.puts(days_in_sec.(7))

# Q. Make a function which takes two maps with "age" keys in them and returns the average age.------

#  avg_age = fn (map_age_1 , map_age_2)-> [%{"age" => map_age_1} + %{"age" => map_age_2}] / 2 end
#  IO.puts(Enum.map[avg_age(10 , 45)])

# Pattern matching with maps--------------------------------------------------------------------------------

those_who_are_assembled = [
  %{age: "30ish", gender: "Female", name: "Izzy"},
  %{age: "30ish", gender: "Male", name: "The Author"},
  %{age: "30ish", gender: "Male", name: "obertor"},
  %{age: "30ish", gender: "Male", name: "soarta"},
  %{age: "30ish", gender: "Female", name: "soarta"},
  %{age: "30ish", gender: "Female", name: "soaa"},
  %{age: "30ish", gender: "Female", name: "soaa"},
  %{age: "10", gender: "Male", name: "Charlie (no relation)"}
]

IO.puts([first, second, third | others] = those_who_are_assembled)
