class WelcomeController < ApplicationController
  def index
    @restaurants = Restaurant.all.limit(10).order(created_at: :desc)
  end
end
