require 'rubygems'
require 'active_resource'

class Product < ActiveResource::Base
	self.site = "http://localhost:8080/"
 	self.include_format_in_path = false
end