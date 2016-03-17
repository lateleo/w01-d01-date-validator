

# Returns the number of days in February
# of the given year, based on whether or not it's a leap year.
def feb_length(year)
  return 29 if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
  28
end

# Determines if the date is valid.
def valid_date?(month, day, year)
  length = [31,feb_length(year),31,30,31,30,31,31,30,31,30,31]
  return (1880..2280).cover?(year) &&
         (1..12).cover?(month) &&
         (1..length[month.pred].to_i).cover?(day)
         # .to_i ensures that a value of nil will be converted to 0.
end
