class JobsController < ApplicationController
	# before_action :photo_params, :only => [:create, :update]

	def index
    @jobs = @current_user.jobs

	end


	def show
	    @job = Job.find(params[:id])
	end

	def new
	    @job = Job.new
	end

	def create
	    @job = Job.new(job_params.merge(user_id: @current_user.id))

	    if @job.save
	      redirect_to @job
	    else
	      render :new
	    end
	end

	# def edit
	#     @photo = Photo.find(params[:id])
	# end

	# def update
	#     @photo = Photo.find(params[:id])

	#     if @photo.update(photo_params)
	#       redirect_to @photo
	#     end
	# end

	def destroy
	    @job = Job.find(params[:id])
	    @job.destroy

	    redirect_to '/jobs'
	end

	private

	def job_params
	    params.require(:job).permit(:title, :post_url)
	end
end
