class WithdrawsController < ApplicationController

  before_action :set_withdraw, only: [:edit, :update, :destroy]

  def new
    @withdraw = Withdraw.new
  end

  def edit
  end

  def index
    @withdraws = Withdraw.all
  end

  def create
    @withdraw = Withdraw.new(withdraw_params)

    if @withdraw.save
      redirect_to withdraws_url
    else
      render :new
    end
  end

  def update
    if @withdraw.update(withdraw_params)
      redirect_to withdraws_url
    else
      render :new
    end
  end

  def destroy
    @withdraw.destroy
    redirect_to withdraws_url
  end

  private
    def set_withdraw
      @withdraw = Withdraw.find(params[:id])
    end

    def withdraw_params
      params.require(:withdraw).permit(:date, :amount)
    end
end
