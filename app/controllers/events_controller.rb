class EventsController < ApplicationController
  def register
  	@attendee = Attendee.find_or_create_by(email: params[:attendee][:details][:email_address])
  	@attendee.confirm_token = (0...50).map { ('a'..'z').to_a[rand(26)] }.join
  	@attendee.details = params[:attendee][:details]
  	@attendee.save
  	@events = []
  	params[:attendee][:event_ids].each do |id|
  		unless id == ""
  			registration = @attendee.registrations.find_or_create_by(event_id: id)
  			@events.push(registration.event)
  		end
  	end
  	@host = @events.first.host
  	EventMailer.confirm_email(@attendee.id, params[:attendee][:host_id], params[:attendee][:event_ids]).deliver_later
  end
  protected
  	def attendee_params
  		params.require(:attendee).permit(details: {}, event_ids: [])
  	end
end
