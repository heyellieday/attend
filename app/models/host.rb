class Host < ActiveRecord::Base

	extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :events

	def find_or_create_events
		eventbrite = Eventbrite.new

		fetched_events = eventbrite.get_events(events_url)

		events = []

		fetched_events.each do |event|
			events.push(Event.find_or_create_by(url: event[:url], host_id: id, date_time: event[:date_time], date: event[:date] ))
		end
		events

	end
end
