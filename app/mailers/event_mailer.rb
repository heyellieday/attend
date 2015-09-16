class EventMailer < ApplicationMailer
	def confirm_email(attendee_id, host_id, event_ids)
		@host = Host.find(host_id)
	  @attendee = Attendee.find(attendee_id)
	  @events = Event.where(id: event_ids)
	  mail to: @attendee.email, subject: "Please confirm your email to register for #{@host.title} events"
	end
end
