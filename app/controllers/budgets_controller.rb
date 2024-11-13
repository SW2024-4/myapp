class BudgetsController < ApplicationController
    def index
        @budgets = Budget.all
        @expend_total = []
        @income_total = []
        @total = 0
    end
    
    def new
        @budget = Budget.new
    end
    
    def create
        b = Budget.new(expend: params[:budget][:expend], income: params[:budget][:income])
        b.save
        redirect_to root_path
    end
    
    def destroy
        Budget.find(params[:id]).destroy
        redirect_to root_path
    end
end