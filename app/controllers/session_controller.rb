class SessionController < ApplicationController

# login and logout logic here
	def login_form

    end
	
	def new
		# shouldn't need any logic here
	end

	# def check_login
 #        user = User.find_by(:email => params[:email])

 #        if user && user.authenticate(params[:password])
 #            # Valid login, set the session and redirect to protected destination
 #            session[:current_user_id] = user.id

 #            redirect_to '/'
 #        else 
 #            # Not a match, redirect to the login page 
 #            redirect_to '/login?err=1'
 #        end
 #    end

	def create
		# handles and processes the login
		if login(params[:email], params[:password])
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