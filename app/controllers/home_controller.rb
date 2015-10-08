class HomeController < ApplicationController
  def index
     @events = Event.order('created_at DESC').limit(5)
  end
end
