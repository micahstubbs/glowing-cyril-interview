class TradesController < ApplicationController

  around_filter :catch_not_found
  #require 'controller_util'
  

  def index
  	@trades = Trade.all
  end

  def show
  	@trade = Trade.find(params[:id])
  	@trades = Trade.all
    @price = Price.where('curve_id = ? AND month_id = ?', @trade.curve_id, @trade.month_id).all
  end

  def import
    Trade.import(params[:file])
    redirect_to root_url, notice: "Trades imported."
  end

  
  private

  def catch_not_found
    yield
  rescue ActiveRecord::RecordNotFound
    redirect_to trades_path, :flash => { :error => "Record not found." }
  end
end
