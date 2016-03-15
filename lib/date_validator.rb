# valid_year? returns `true` or `false` based on if
# the given year falls within the established bounds.
def valid_year?(year)
year >= 1880 && year <= 2280
end

# valid_month? returns `true` or `false` based on
# if the given month is real.
def valid_month?(month)
  month >= 1 && month <= 12
end

# leap_year? returns `true` or `false` based on
# if the given year is a leap year.
def leap_year?(year)
(year % 4 == 0 && year % 100 != 0) || year % 400 == 0
end

# month_length returns the number of days
# in the given month of the given year.
def month_length(month, year)
  return 31 if [1,3,5,7,8,10,12].include?(month)
  return 30 if [4,6,9,11].include?(month)
  return 29 if month == 2 && leap_year?(year)
  return 28 if month == 2 && leap_year?(year) == false
end

# valid_day? returns `true` or `false` based on if
# if the given day is real, given `max`, the number
# of day in the current month (as determined by month_length)
def valid_day?(day, max)
  day >= 1 && day <= max
end

# valid_date? uses month_length to determine the number of days
# in the given month of the given year, and then determines
# if the date is valid.
def valid_date?(month, day, year)
  length = month_length(month, year)
  return valid_year?(year) && valid_month?(month) && valid_day?(day, length)
end
