class DashboardController < ApplicationController

  # devise helper
  # makes sure user is logged in before index/delete action
  before_action :authenticate_user!
  
  def index
  end
end
