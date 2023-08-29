#%% basics
# following along with JuliaAcademy Intro Course

println("Hello, world!") # usually print with println

x = '🥲'
typeof(x)

😸 = 3
🐱 = 2
😃 = 1

😸 - 😃 == 🐱
🐱 + 😃 == 😸 

days = 365
days_float = convert(Float64, days)

string1 = "This is a string"
string2 = """This is also a "string"!"""
char1 = 't' #this is not a string
invald = 'this does not work'

hourly = 18.75
tips = 104.50
shift_hours = 9
weekly_shift_avg = 3.5
position = "tour guide"
course = "EMSP"

println("""
        While studying $course I work as a $position. 
        I make \$$hourly/hour and \$$tips/shift in tips.
        I earn \$$((hourly*shift_hours+tips)*weekly_shift_avg) \
        on average per week.
        With a yearly salary of \
        \$$((hourly*shift_hours+tips)*weekly_shift_avg*52) \
        I'm doing ok, especially as a student of $course.
        """) 
s = string("While studying $course I work as a $position. \n",
        "I make \$$hourly/hour and \$$tips/shift in tips.\n",
        "I earn \$$((hourly*shift_hours+tips)*weekly_shift_avg) ",
        "on average per week.\n",
        "With a yearly salary of ",
        "\$$((hourly*shift_hours+tips)*weekly_shift_avg*52) ",
        "I'm doing ok, especially as a student of $course."
        )
println(s)

s1 = "While studying $course I work as a $position. \n"
s2 = "I make \$$hourly/hour and \$$tips/shift in tips.\n"
s3 = "I earn \$$((hourly*shift_hours+tips)*weekly_shift_avg) "
s4 = "on average per week.\n"
s5 = "With a yearly salary of "
s6 = "\$$((hourly*shift_hours+tips)*weekly_shift_avg*52) "
s7 = "I'm doing ok, especially as a student of $course."
println(s1*s2*s3*s4*s5*s6*s7)
println("$s1$s2$s3$s4$s5$s6$s7")

my_pets = Dict("Malcolm" => "cat", "Oliver" => "dog")
my_pets["Hazel"] = "cat"
my_pets
println(my_pets)
for (name, type) in my_pets
    println("$name is my $type")
end

my_pets[1] #dicts not indexed

#tuples are immutable
pet_tuple = tuple(keys(my_pets)...) #... flattens preceding arg into elements
pet_tuple[1] #indexes start at 1
for pet in pet_tuple
    println(pet)
end
pet_tuple[1] = "change" #immutable

#arrays are both indexed and mutable
pet_array = [pet_tuple...]
push!(pet_array, "new_friend") #add to end
deleted = pop!(pet_array) #return and delete last value
println(deleted)

#dims don't need same length for multidim arrays
m_array = [[1,2,3],[4,5],[6,7,8,9,10]]

#build arrays with functions
rand_array = rand(8,3)
rand_array2 = rand(8,3,4,2)

#%% end basics

