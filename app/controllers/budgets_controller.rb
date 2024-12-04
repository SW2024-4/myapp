class BudgetsController < ApplicationController
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
    @budget.destroy
    redirect_to root_path
  end

end
