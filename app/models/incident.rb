class Incident < ApplicationRecord
    geocoded_by :full_street_address, :latitude  => @latitude, :longitude => @longitude   # can also be an IP address
    after_validation :geocode          # auto-fetch coordinates
    
    
    
    
    def full_street_address
       return [@street_address_1, @street_address_2, @city, @state, @zip].compact.reject(&:empty?).join(', ')
    end
    
end
