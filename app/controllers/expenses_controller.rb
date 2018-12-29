class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :edit, :update, :destroy]
  before_action :set_categories, only: [:new, :edit]

  def index
    @expenses = Expense.all
  end

  def show
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.new(expense_params)

    if @expense.save
      redirect_to expenses_url
    else
      format.html { render :new  }
    end
  end

  def edit
  end

  def update
    if @expense.update(expense_params)
      redirect_to expenses_url
    else
      format.html { render :edit  }
    end
  end

  def destroy
    @expense.destroy
    redirect_to expenses_url
  end

  def month_expenses
    @current_month_expenses = Expense.get_current_month_expenses
  end

  private
    def set_expense
      @expense = Expense.find(params[:id])
    end

    def set_categories
      @categories = Category.all
    end

    def expense_params
      params.require(:expense).permit(:date, :description, :amount, :category_id)
    end
end
