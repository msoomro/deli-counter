katz_deli = []

# requires list of current line of people
# outputs everyone's current place in line
def line (line)
    if line.size == 0
        puts "The line is currently empty."
    else
        line_places = "The line is currently:"
        line.each_with_index do |name, place|
            line_places << " #{place + 1}. #{name}"
        end
        puts line_places
    end
end

# requires list of current line of people
# requires name of person joining the end of the line
# outputs new person's name and position in line
def take_a_number (line, name)
    line << name
    puts "Welcome, #{name}. You are number #{line.size} in line."
end

# requires list of current line of people
def now_serving (line)
    if line.size == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{line.shift}."
    end
end

