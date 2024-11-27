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
    b = Budget.new(budget_params.merge(
    user_id: session[:login_uid],
    expend: params[:budget][:expend],
    income: params[:budget][:income]
    ))
    Rails.logger.debug "Params received: #{params[:budget].inspect}"
    b.save
    redirect_to root_path
  end

  def destroy
    @budget.destroy
    redirect_to root_path
  end

  private

  def set_budget
    @budget = Budget.find_by(id: params[:id], uid: session[:login_uid])
    redirect_to root_path unless @budget
  end

  def budget_params
    params.require(:budget).permit(:start_time, :expend, :income)
  end
end
