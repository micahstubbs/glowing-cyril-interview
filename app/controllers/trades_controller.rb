class TradesController < ApplicationController

  around_filter :catch_not_found

  def index
  	@trades = Trade.all
  end

  def show
  	@trade = Trade.find(params[:id])
  	@trades = Trade.all
  end
  
  private

  def catch_not_found
    yield
  rescue ActiveRecord::RecordNotFound
    redirect_to trades_path, :flash => { :error => "Record not found." }
  end
end
