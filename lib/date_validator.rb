# This method takes three arguments: month, date, and year, and returns either TRUE
# or FALSE (the boolean values, not the string representation of those boolean
# values) depending on whether the date is valid (i.e. does exist on the calendar)
# or is not valid (i.e. does not exist on the calendar).
#
# Here are the rules:
#
# + The month must be between 1 and 12 (inclusive)
# + The year must be between 1880 and 2280 (inclusive)
# + The day must exist within the month
# + You must account for leap years (look up how leap years work)
# + No using the `Date` class (we'll refactor to allow the `Date` class later this week)
# + Only worry about integer inputs (no floats, strings, etc.)
#
# This method should, in its final form, not do any output.
def valid_date?(month, day, year)
  long = [1,3,5,7,8,10,12]
  short = [4,6,9,11]
  feb = 2
  leap = nil
  if day < 1 || year < 1880 || year > 2280
    return false
  end
  if (long.include?(month) && day > 31) || (short.include?(month) && day > 30)
      return false
  elsif month == feb
    if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
      leap = true
    else
      leap = false
    end
    if (leap == true && day > 29) || (leap == false && day > 28)
      return false
    end
  else
    return false
  end
  return true
end
