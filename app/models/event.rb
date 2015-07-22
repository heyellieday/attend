class Event < ActiveRecord::Base
	belongs_to :host
	scope :future, -> { where("date_time > ?", DateTime.now).order(date_time: :asc)}
end
