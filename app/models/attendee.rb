class Attendee < ActiveRecord::Base
	has_many :registrations

	attr_accessor :event_ids
end
