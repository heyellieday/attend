class HostsController < ApplicationController
  def index

  end

  def show
  	@host = Host.friendly.find(params[:id])

		@events = @host.events.future
		
  end
end
