class HomeController < ApplicationController
	layout 'application'

	def index
		@posts = InterfaceApi::all_postits
	end

	def search_postit
		@post = InterfaceApi::search_postit(params[:id])
		respond_to do |format|
			format.html{redirect_to '/'}
			format.js
		end
	end

	def create_post
		@create = InterfaceApi::create_post(params[:title], params[:description])
		@posts = InterfaceApi::all_postits
			if @create
				respond_to do |format|
					format.html{redirect_to '/'}
					format.js
				end
			end
	end

	def destroy_postit
		post = InterfaceApi::destroy(params[:id])
		@posts = InterfaceApi::all_postits

		respond_to do |format|
			format.html{redirect_to '/'}
			format.js
		end
	end
end
