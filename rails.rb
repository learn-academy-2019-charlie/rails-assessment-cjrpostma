# Rails Assessments

# We've done the following exercises in Javascript, Now try them in RUBY (You can do them in Javascript again if you want extra practice - not required.)
#
# The World Translator
# Write a Method named hello_world that:
#
# takes 1 argument, a language code (e.g. "es", "de", "en")
# returns "Hello, World" for the given language, for at least 3 languages. It should default to returning English.
#hello_world("es") should return "Hola Mundo"
#hello_world("de") should return "Hallo Welt"

def hello_world (language = 'english')
    if language == 'english'
        puts 'Hello World'
    elsif language == 'french'
        puts 'Bonjour le Monde'
    elsif language == 'dutch'
        puts 'Hallo Wereld'
    end
end

hello_world('french')
hello_world()
hello_world('dutch')

# The Grade Assigner
# Write a Method named assign_grade that:
#
# takes 1 argument, a number score.
# returns a grade for the score, either "A", "B", "C", "D", or "F".
# assign_grade(90) should return A
# assign_grade(75) should return C

def assign_grade (score)
  if (score > 100 || score < 1)
    puts "Score (#{score}) is out of range (1-100)."
  elsif score > 90
    puts "A (#{score})"
  elsif score > 80
    puts "B (#{score})"
  elsif score > 70
    puts "C (#{score})"
  elsif score > 60
    puts "D (#{score})"
  else
    puts "F (#{score})"
  end
end

assign_grade(40)
assign_grade(50)
assign_grade(60)
assign_grade(61)
assign_grade(70)
assign_grade(-1)
assign_grade(71)
assign_grade(802)
assign_grade(90)
assign_grade(91)

# The Pluralizer
# Write a method named pluralizer that:
#
# takes 2 arguments, a noun and a number.
# returns the number and pluralized form of the noun, if necessary.
# pluralizer(5, cat) should return "5 cats"
# pluralizer(1, dog) should return "1 dog" because the number one does not require a plural noun
# Arguments will always be a number and a singular noun.

# Bonus: Make it handle a few collective nouns like "sheep", "geese", "children", "people" and "species".

def pluralizer (noun, num)
  if num > 1 && noun.include?('goose')
    puts "#{num}, geese"
  elsif num > 1
    puts "#{num}, #{noun}s"
  else
    puts "#{num}, #{noun}"
  end
end



pluralizer('goose', 2)
pluralizer('goose', 1)
pluralizer('person', 4)
pluralizer('cat', 4)
