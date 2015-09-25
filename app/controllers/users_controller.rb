class UsersController < ApplicationController



	def index

	end

	def show
	# creates a post

	end

	def new	
	# creates a post
	@user = User.new
	end

	def create
		# write the code that saves the user to the db here
		# it'll be the same as other times
		@user = User.new(user_params) #(job_params.merge(user_id: @current_user.id))

	    if @user.save
	      redirect_to @user
	    else
	      render :new
	    end
	end

	private

	def user_params
	    params.require(:user).permit(:first_name, :last_name, :email, :password)
	end

end
# creating, editing
# signing users up

# THIS IS THE LOGIN CONTROLLER FROM the photo app