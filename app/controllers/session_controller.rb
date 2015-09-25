class SessionController < ApplicationController

# login and logout logic here

	def new
		# shouldn't need any logic here
	end

	def create
		# handles and processes the login
		if login(params[:email], params[:password})
			redirect_back_or_to '/'
		else
			render :new
			# send an error message along with a render
			# rendering the login form again here to try to login again
		end
	end

	def destroy
		logout
		redirect_to '/'
	end

end