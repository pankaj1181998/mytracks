require 'pry'
require "uri"
require "net/http"
require 'json'
require 'pry'
require 'active_support/core_ext'

class FlightController < ApplicationController
  
  def search
  	
  #	@res = Maketrip.for ( params["from"], params["to"], params["dept"], params["arr"], params["seat"], params["adult"], params["children"])
  @res = Maketrip.for("DEL","MAA","20180830","20180830","E","2","0")
  #render @res = @out
	    
	  
  end
end
