class Registration < ActiveRecord::Base
	belongs_to :attendee
	belongs_to :event

	def confirm
		EventWorker.perform_async(attendee.details, event.id)
	end
end
