#1. Check what the counts were last week

class BirdCount
    def self.last_week
      [0, 2, 5, 3, 7, 8, 4]
    end
  end
  
  puts BirdCount.last_week
  #=> [0, 2, 5, 3, 7, 8, 4]

  

  #2. Check how many birds visited yesterday
  #3.
  #4.

  class BirdCount
    attr_reader :birds_per_day
  
    def initialize(birds_per_day)
      @birds_per_day = birds_per_day
    end
  
    def yesterday
      birds_per_day[-2]
    end
  
    def self.last_week
      [0, 2, 5, 3, 7, 8, 4]
    end

      #3. Calculate the total number of visiting birds
    def total
      @birds_per_day.sum
    end

    #4. Calculate the number of busy days
    def busy_days
        @birds_per_day.count { |count| count >= 5 }
      end

    #5. Check if there was a day with no visiting birds
    def day_without_birds?
        @birds_per_day.include?(0)
    end
  end
  
    

  birds_per_day = [2, 5, 0, 7, 4, 1]
  bird_count = BirdCount.new(birds_per_day)
  puts bird_count.yesterday
  puts bird_count.total
  puts bird_count.busy_days
  puts bird_count.day_without_birds?
  
  