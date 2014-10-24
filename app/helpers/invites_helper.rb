module InvitesHelper

	def render_isVeg(isVeg)
		if isVeg 
			"吃素"
		else isVeg 
			"無"
		end		
	end

	def render_location(location)
		if location == "1"
			"台東"
		elsif location == "0"
			"台北"
		end		
	end	
end
