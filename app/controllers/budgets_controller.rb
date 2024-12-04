class BudgetsController < ApplicationController
  before_action :authenticate_user
  before_action :set_budget, only: [:show, :destroy]

  def index
    @budgets = current_user.budgets
  end

  def show
    # @budget は set_budget で取得済み
  end

  def new
    @budget = Budget.new
  end

  def create
    params[:budget][:start_time] = startTime_join
    b = Budget.new(
      budget_params
    )
    b.user = User.find_by(uid: current_user.uid)
    b.save
    redirect_to root_path
  end

  def destroy
    Budget.find(params[:id]).destroy
    redirect_to root_path
  end
  
  private
  
  def set_budget
    @budget = Budget.find(params[:id])
  end

  def budget_params
    params.require(:budget).permit(:start_time)
  end
  
  def startTime_join
    date = params[:budget][:start_time]
  end
  
end
