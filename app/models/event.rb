class Event < ActiveRecord::Base
	belongs_to :host
	has_many :regisrations
	scope :future, -> { where("date_time > ?", DateTime.now.tomorrow).order(date_time: :asc)}

	def self.register(params, event_ids)
		eventbrite = Eventbrite.new
		event_ids.each do |id|
			unless id.nil?
				event = Event.find(id)
				response = eventbrite.register(event.url, params)
				unless response
					return response
				end
			end
		end
	end
end
