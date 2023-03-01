class LogLineParser
    def initialize(log_line)
      @log_line = log_line
    end
  
    def message
        @log_line.split(':').last.strip
      end
    
      def log_level
        @log_line.downcase.split('[').last.split(']').first
      end

    def reformat(self):
        msg = self.message()
        level = self.log_level()
        return f"{msg} ({level})"
    end
  end
  
  
  parser = LogLineParser.new('[ERROR]: Invalid operation')
  puts parser.message
  # Output: "Invalid operation"
  
  parser = LogLineParser.new("[WARNING]:  Disk almost full\r\n")
  puts parser.message
  # Output: "Disk almost full"
  