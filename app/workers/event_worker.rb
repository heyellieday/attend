class EventWorker
  include Sidekiq::Worker

  def mass_register(details, event_ids)
  	Sidekiq.redis do |conn|
	    Event.register(details, event_ids)
		end
  end
end