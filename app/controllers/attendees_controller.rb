class AttendeesController < ApplicationController
  def confirm_email
  	@attendee = Attendee.find_by(confirm_token: params[:confirm_token])
  	@events = []
  	if @attendee.present?
  		@attendee.confirmed = true
  		@attendee.save
  		@attendee.registrations.where(completed: nil).each do |registration|
  			registration.completed = true
  			registration.confirm
  			registration.save
  			@events.push(registration.event)

  		end
  	else
  		render json: {success: false}
  	end
  end
end
