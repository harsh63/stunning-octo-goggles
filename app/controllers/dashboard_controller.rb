class DashboardController < ApplicationController
  def index
    @assets = Home.all.order(:created_at)
  end
end
