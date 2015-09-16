class EventWorker
  include Sidekiq::Worker

  def perform(details, event_id)
  	Sidekiq.redis do |conn|
  		event = Event.find(event_id)
	    event.register(details)
		end
  end
end