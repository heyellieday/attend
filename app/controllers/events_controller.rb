class EventsController < ApplicationController
  def register

  	@response = Event.register(attendee_params)

  	render json: @response

  end
  protected
  	def attendee_params
  		params.require(:attendee).permit(:first_name, :last_name, :email_address, :confirm_email_address, event_ids: [])
  	end
end
