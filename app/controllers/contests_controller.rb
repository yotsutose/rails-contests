class ContestsController < ApplicationController
  def index
    @contests = Contest.all
  end

  def show
    @contest = Contest.find(params[:id])
  end

  def add
    if request.post? then
      Contest.create(contest_params)
      redirect_to '/contests'
    else
      @contest = Contest.new
    end
  end

  def edit
  end

  def contest_params
    params.require(:contest).permit(:title)
  end

end
