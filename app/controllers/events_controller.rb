class EventsController < ApplicationController
  respond_to :json

  def index
    respond_with Event.all
  end

  def nearby
    respond_with Event.nearby(params[:lat], params[:lon])
  end

end
