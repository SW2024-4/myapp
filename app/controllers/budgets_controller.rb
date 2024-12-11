class BudgetsController < ApplicationController
  def index
    @budgets = current_user.budgets
  end

  def show
    # @budget は set_budget で取得済み
    @budget = Budget.find(params[:id])
  end

  def new
    @budget = Budget.new
  end

  def create
    b = Budget.new(
    expend: params[:budget][:expend],
    income: params[:budget][:income],
    date: params[:budget][:date]
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
  
end
