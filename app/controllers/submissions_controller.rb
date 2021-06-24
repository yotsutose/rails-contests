class SubmissionsController < ApplicationController

  def index
    @submissions = Submission.all
  end

  def show
    @submission = Submission.find(params[:id])
  end

  # def add
  #   if request.post? then
  #     Submission.create(submission_params)
  #     redirect_to '/submissions'
  #   else
  #     @submission = Submission.new
  #   end
  # end

  # private
  # def submission_params
  #   params.require(:submission).permit(:uId, :pId, :answer, :state)
  # end

end
