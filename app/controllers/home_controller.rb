class HomeController < ApplicationController
  def index
    @locations = Location.all.order(:position)
  end

  def book_slot
  end

  def show_logs
  end
end
