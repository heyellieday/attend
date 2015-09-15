class EventsController < ApplicationController
  def register
  	EventWorker.mass_register(params[:attendee][:details], params[:attendee][:event_ids])
  end
  protected
  	def attendee_params
  		params.require(:attendee).permit(details: {}, event_ids: [])
  	end
end
