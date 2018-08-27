class Maketrip < ApplicationRecord
  @out = 1
  def self.for ( from , to, dept ,arr ,seat ,adult ,children) 
			if from && to && dept && arr != nil
		  	uri = URI("http://developer.goibibo.com/api/search/?")
		  	uri.query = URI.encode_www_form({  "app_id" => "01d613cc" ,
												"app_key" => "2d974c23eaa3034771edbe80db153a34", 
							                    "format" => "json", 
							                    "source" => from ,
							                    "destination" => to ,
							                    "dateofdeparture" => dept ,
							                    "dateofarrival" => arr ,
							                    "seatingclass" => seat ,
							                    "adults" => adult , 
							                    "childrens" => children , 
							                    "infants" => "0" , 
							                    "counter" => "100" 
											}) 	
			  Net::HTTP.get(uri) # => String
		p	  @res = (Net::HTTP.get(uri))
			   
	@out = @res
		end
	@res
   end
end