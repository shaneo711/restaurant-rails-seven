class DashboardController < ApplicationController
  def index
    @user_restaurants = current_user.restaurants
    @user_lists = current_user.lists
    @saved_lists = []
    # @saved_lists = current_user.saved_lists.includes(:list)
  end
end
