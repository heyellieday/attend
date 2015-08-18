class EventsController < ApplicationController
  def register
  	@response = Event.register(params[:attendee][:details], params[:attendee][:event_ids])

  	render json: @response

  end
  protected
  	def attendee_params
  		params.require(:attendee).permit(details: {}, event_ids: [])
  	end
end
