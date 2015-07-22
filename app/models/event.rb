class Event < ActiveRecord::Base
	belongs_to :host
	scope :future, -> { where("date_time > ?", DateTime.now).order(date_time: :asc)}

	def self.register(params)
		eventbrite = Eventbrite.new
		params[:event_ids].each do |id|
			event = Event.find(id)
			response = eventbrite.register(event.url, params)
			unless response
				return response
			end
		end
	end
end
