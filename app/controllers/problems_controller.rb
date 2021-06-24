class ProblemsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @problems = Problem.all
  end

  def show
    @problem = Problem.find(params[:id])
    if request.post? then
      Submission.create(submission_params)
      redirect_to '/submissions'
    else
      @submission = Submission.new
    end
  end

  def add_submission
    if request.post? then
      memo = 'waiting'
      memo1 = Problem.find(params['submission']['pId'])
      if params['submission']['answer']==memo1.answer  then
        memo = 'AC'
      else
        memo = 'WA'
      end
      Submission.create(submission_params.merge(state: memo))
      redirect_to '/submissions' 
    else
      @submission = Submission.new
    end
  end

  def add
    if request.post? then
      Problem.create(problem_params)
      redirect_to '/problems'
    else
      @problem = Problem.new
    end
  end

  private
  def problem_params
    params.require(:problem).permit(:title, :statement, :answer, :contest_id)
  end

  def submission_params
    params.require(:submission).permit(:uId, :pId, :answer)
  end
end
