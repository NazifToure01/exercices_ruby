class Microwave
    def initialize(buttons)
      @buttons = buttons
    end
  
    def convert_to_time
      seconds = @buttons.to_i
      minutes = seconds / 60
      seconds = seconds % 60
      format('%02d:%02d', minutes, seconds)
    end
  end
  
  microwave = Microwave.new('90')
  puts microwave.convert_to_time 
  