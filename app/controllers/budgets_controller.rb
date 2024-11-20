class BudgetsController < ApplicationController
    def index
        @budgets = Budget.all
    end
    
    def show
        @budget = Budget.find(params[:id])
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