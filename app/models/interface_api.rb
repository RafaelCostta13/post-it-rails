class InterfaceApi < ApplicationRecord
	require 'rest-client'

	def self.all_postits
		resp = RestClient.get "localhost:3000/api/v1/postit/all_postits"
		resp = JSON.parse(resp)
	end

	def self.search_postit(id)
		resp = RestClient.get "localhost:3000/api/v1/postit/search/#{id}"
		resp = JSON.parse(resp)
	end

	def self.create_post(title, description)
		url = "localhost:3000/api/v1/postit/create"
		data = {title: title, description: description}
		resp = RestClient.post(url, data)
		resp = JSON.parse(resp)
	end

	def self.destroy(id)
		resp = RestClient.delete "localhost:3000/api/v1/postit/destroy/#{id}"			
		resp = JSON.parse(resp)
	end
end