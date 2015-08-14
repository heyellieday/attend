class HostsController < ApplicationController
  def index
  	@hosts = Host.all
  end

  def show
  	@host = Host.friendly.find(params[:id])

		@events = @host.events.future

		@attendee = Attendee.new
  end
end
