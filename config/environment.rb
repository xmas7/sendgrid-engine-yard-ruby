# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
SgEyRuby::Application.initialize!

ActionMailer::Base.default :content_type => "text/html"