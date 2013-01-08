class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    event = Event.create params[:event]
    redirect_to admin_event_url(id: event.admin_token)
  end
end
