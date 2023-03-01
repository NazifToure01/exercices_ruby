#1 -  Define the expected oven time in minutes

#class Lasagna
    #EXPECTED_MINUTES_IN_OVEN = 40
  #end
  

#2 - Calculate the remaining oven time in minutes

#class Lasagna
#    EXPECTED_MINUTES_IN_OVEN = 40
  
#    def remaining_minutes_in_oven(actual_minutes)
#      EXPECTED_MINUTES_IN_OVEN - actual_minutes
#    end
#  end
  
#  lasagna = Lasagna.new
#  puts(lasagna.remaining_minutes_in_oven(30))
 

# 3- Calculate the preparation time in minutes

# class Lasagna
#     EXPECTED_MINUTES_IN_OVEN = 40
    
#     def preparation_time_in_minutes(num_layers)
#       num_layers * 2
#     end
    
#     def remaining_minutes_in_oven(actual_minutes)
#       EXPECTED_MINUTES_IN_OVEN - actual_minutes
#     end
#   end
  
#   lasagna = Lasagna.new
#   puts(lasagna.preparation_time_in_minutes(2))
  

class Lasagna
    EXPECTED_MINUTES_IN_OVEN = 40
    PREPARATION_TIME_PER_LAYER = 2
  
    def remaining_minutes_in_oven(actual_minutes_in_oven)
      EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
    end
  
    def preparation_time_in_minutes(layers)
      layers * PREPARATION_TIME_PER_LAYER
    end
  
    def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
      preparation_time_in_minutes(number_of_layers) + actual_minutes_in_oven
    end
  end
  
  lasagna = Lasagna.new
  
  puts(lasagna.remaining_minutes_in_oven(30))
  # => 10
  
  puts(lasagna.preparation_time_in_minutes(2))
  # => 4
  
  puts(lasagna.total_time_in_minutes(number_of_layers: 3, actual_minutes_in_oven: 20))
  # => 26
  