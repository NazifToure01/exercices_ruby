require 'date'

class Meetup
  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(weekday, descriptor)
    start_date = Date.new(@year, @month, 1)
    end_date = Date.new(@year, @month, -1)

    case descriptor
    when "teenth"
      (start_date..end_date).find { |date| date.wday == weekday && date.day > 12 && date.day < 20 }
    when "last"
      (start_date..end_date).to_a.reverse.find { |date| date.wday == weekday }
    else
      ordinal = ordinal_to_number(descriptor)
      (start_date..end_date).select { |date| date.wday == weekday }[ordinal-1]
    end
  end

  private

  def ordinal_to_number(ordinal)
    case ordinal
    when "first"
      1
    when "second"
      2
    when "third"
      3
    when "fourth"
      4
    when "fifth"
      5
    end
  end
end


meetup = Meetup.new(1, 2017)
puts meetup.day(:monday, "first")  