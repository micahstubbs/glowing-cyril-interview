module ControllerUtil
  
  class Formatter
  	def date_format(date_string)
  		date_string.downcase!().gsub!(/[\s-]/, "")
  	end
  end
 
end