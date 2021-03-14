class ShoppingController < ApplicationController
  before_action :find_home, only: %i[checkout]

  def checkout
    VeryLongTaskJob.perform_later(@home, params[:email])
    redirect_to :root, notice: "Thanks for purchasing this item you will recieve an email at #{params[:email]} in few minutes"
  end

  private

  def find_home
    @home = Home.find(params[:home_id])
  end
end
