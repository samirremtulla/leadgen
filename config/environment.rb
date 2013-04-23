# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Leadgen::Application.initialize!

require 'pusher'

Pusher.app_id = '42395'
Pusher.key = 'ea68d0e9ff775535a631'
Pusher.secret = '2b13d8c8b1bf988147a2'