import Data.Time.Calendar
import Data.Time.Calendar.WeekDate

problem_19 = length [ () | year <- [1901..2000],
                          month <- [1..12],
                          let (_, _, day) = toWeekDate $ fromGregorian year month 1, day == 7]