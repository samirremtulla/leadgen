# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Leadgen::Application.initialize!

require 'pusher'

Pusher.app_id = ENV["PUSHER_APP_ID"]
Pusher.key = ENV["PUSHER_KEY"]
Pusher.secret = ENV["PUSHER_SECRET"]