

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
    end
  
    def revoke_pass!
      @pass_id = nil
    end
    #1. Check if an attendee has a ride pass
    def has_pass?
      !@pass_id.nil?
    end

    #2. Check if an attendee fits a ride
    def fits_ride?(required_height)
        @height >= required_height
      end
    #3. Check if an attendee is allowed to ride
    def allowed_to_ride?(ride_height)
        has_pass? && fits_ride?(ride_height)
    end
  end
  
#1. Check if an attendee has a ride pass
#puts Attendee.new(100).has_pass?
# => false

#2. Check if an attendee fits a ride
#attendee = Attendee.new(140)
#puts attendee.fits_ride?(100)
# => true

#3. Check if an attendee is allowed to ride
#attendee = Attendee.new(100)
#attendee.issue_pass!(42)
#attendee.allowed_to_ride?(120)
# => false

