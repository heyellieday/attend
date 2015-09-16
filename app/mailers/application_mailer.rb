class ApplicationMailer < ActionMailer::Base
  default from: "postmaster@ellie.is"
  layout 'mailer'
end
