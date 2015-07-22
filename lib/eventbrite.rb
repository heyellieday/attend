require 'capybara'
require 'capybara/dsl'
require 'capybara/poltergeist'
require "mechanize"
require "nokogiri"
require 'json'
require 'phantomjs'
require 'time'

class Eventbrite
	include Capybara::DSL

	Capybara.default_driver = :poltergeist
	Capybara.run_server = false
	Capybara.register_driver :poltergeist do |app|
	    Capybara::Poltergeist::Driver.new(app, {js_errors: false, :phantomjs => Phantomjs.path})
	end

	def get_events(url)
		visit(url)

		events = []

		html_doc = Nokogiri::HTML(page.html)

		html_doc.css('.js-select-series-date > option').each do |option|			
			event = {}
			event[:url] = option.attr("data-url")
			event[:date] = option.content.strip.gsub(/\s+/, " ")
			unless event[:date].include?("Select a date") || event[:date].include?("Earlier dates")
				date_time = event[:date]
				event[:date_time] = Time.parse(date_time) 
				events.push(event)
			end
		end

		return events
	end

	def register(path, params)
		visit("https://eventbrite.com#{path}")

		html_doc = Nokogiri::HTML(page.html)

		click_link('Register')

		fill_in 'first_name', :with => params[:first_name]
		fill_in 'last_name', :with => params[:last_name]
		fill_in 'email_address', :with => params[:email_address]
		fill_in 'confirm_email_address', :with => params[:confirm_email_address]
		fill_in 'attendee_1_first_name', :with => params[:first_name]
		fill_in 'attendee_1_last_name', :with => params[:last_name]

		click_link('Complete Registration')

		if page.title.include?("You're going to")
			true
		else
			false
		end
	end
end



