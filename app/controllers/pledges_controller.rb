class PledgesController < ApplicationController
before_filter :require_login



 	def new

 		@project = Project.find(params[:project_id])
    @pledge = @project.pledges.build
  end


  def create
  	@project = Project.find(params[:project_id])
  	@pledge = @project.pledges.build params[:pledge]
    @pledge.user = current_user
    
    if @pledge.save
      # UserMailer.new_pledge(@pledge).deliver
      redirect_to @project, notice: "Nice! Thanks for pledging $#{@pledge.amount} for this project."
    else
      render :new
    end
  end

  # private

  # def login_check
  #   redirect_to new_session_path, notice: "Please login first." unless logged_in?
  # end
  
end
