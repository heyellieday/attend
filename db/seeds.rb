# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Host.create(
	events_url: "http://www.eventbrite.com/e/chi-hack-night-registration-14966554367",
	title: "Chi Hack Night",
	description: "The Chi Hack Night (formerly known as the Open Gov Hack Night) is a free, weekly event in Chicago to build, share and learn about civic tech, or tools to create, support, or serve public good.  Join us every Tuesday from 6-10pm on the 8th floor of the Merchandise Mart to hear from interesting speakers, learn from each other and work on civic projects. Non-techies are very welcome!     What happens at a hack night?  Every week, we have a 10-15 minute presentation by a government agency, non-profit, company or group who've made use of open data or built a civic technology application. The goal of these presentations is to showcase the different uses and opportunities, as well as challenges and successes in the civic technology movement.  After the presentation, the format of the event is similar to that of a hackathon where breakout groups self-organize to work on civic apps, discuss policies and their implications, learn technical skills and network with a welcoming and diverse community at the intersection of technology and government.     But I'm not a techie!  That's ok! We encourage non-technical folks to pair up and learn from our community's designers and developers. We've seen time and time again, he best civic projects come from teams with a diverse background.  Remember, there's much more to making a great app than just coding.",
	website: "http://chihacknight.org",
	address: "222 W. Merchandise Mart Plaza, 8th Floor, Chicago, IL 60654"
)
