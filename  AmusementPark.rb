#8 - 1. Make new attendees
# 8- 2. How tall is the attendee

#class Attendee
#    attr_reader :height
#  
#    def initialize(height)
#      @height = height
#    end
#  end
  
#attendee = Attendee.new(106)
#puts attendee.height #=> 106


# 3. What is the ride pass id 
# 4. Allow people to buy a pass

#class Attendee
#    attr_reader :height, :pass_id
    
#    def initialize(height)
#      @height = height
#      @pass_id = nil
#    end
  
#    def issue_pass!(pass_id)
#      @pass_id = pass_id
#      pass_id
#    end
#  end

# 4. Revoke the pass
class Attendee
    def initialize(height)
      @height = height
      @pass_id = nil
    end
  
    def height
      @height
    end
  
    def pass_id
      @pass_id
    end
  
    def issue_pass!(pass_id)
      @pass_id = pass_id
      @pass_id
    end
  
    def revoke_pass!
      @pass_id = nil
    end
  end
  
  attendee = Attendee.new(106)
  attendee.issue_pass!(42)
  puts attendee.pass_id 
  # => 42
  attendee.revoke_pass!
  puts attendee.pass_id 
  # => nil
  