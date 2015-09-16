class Event < ActiveRecord::Base
	belongs_to :host
	has_many :regisrations
	scope :future, -> { where("date_time > ?", DateTime.now.tomorrow).order(date_time: :asc)}

	def register(details)
		eventbrite = Eventbrite.new
		response = eventbrite.register(url, details)
		unless response
			return response
		end
	end
end
