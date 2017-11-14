class Incident < ApplicationRecord
    geocoded_by :full_street_address, :latitude  => @latitude, :longitude => @longitude   # can also be an IP address
    after_validation :geocode          # auto-fetch coordinates
    
    
    def full_street_address
       return [@street_address_1, @street_address_2, @city, @state, @zip].compact.reject(&:empty?).join(', ')
    end
    
    def self.get_street_address(address)
        puts Geocoder.coordinates(address).first
        
        geocoder_result =  Geocoder.coordinates(address)
        
        incident.latitude = geocoder_result.first
        incident.longitude = geocoder_result.last
    end
    
end
