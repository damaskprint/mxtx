class AccountsController < ApplicationController


  def show
    @account = Account.find(params[:id])

  end

  def destroy
    @account = Account.find(params[:id])
    @account.destroy

    if @account.destroy
      redirect_to root_url, notice: "Your Account Has Been deleted. Farewell, Traveler..."
    end
  end

  def ban
    @account = Account.find(params[:id])




    @account.destroy
    if @account.destroy
      redirect_to root_url, notice: "Your Account Has Been deleted. Farewell, Traveler..."
    end
  end
  
end
