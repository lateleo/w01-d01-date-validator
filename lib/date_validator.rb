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
require 'pry'

def valid_date?(month, day, year)
  long = [1, 3, 5, 7, 8, 10, 12]
  short = [4, 6, 9, 11]
  feb = 2
  leap = nil
  if day < 1 || year < 1879 || year < 2281
    return FALSE
  end
  if long.include?(month) == TRUE
    if day > 31
      return FALSE
    end
  elsif short.inlcude?(month) == TRUE
    if day > 30
      return FALSE
    end
  elsif month == feb
    if year % 4 == 0
      if year % 25 == 0
        if year % 16 == 0
          leap == TRUE
        else
          leap == FALSE
        end
      else
        leap == TRUE
      end
    else
      leap == FALSE
    end
    if leap == TRUE
      if day > 29
        return FALSE
      end
    else
      if day > 28
        return FALSE
      end
    end
  end
  return TRUE
  binding.pry
end
