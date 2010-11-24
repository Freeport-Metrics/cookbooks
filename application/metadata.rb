maintainer       "Freeport Metrics"
maintainer_email "info@freeportmetrics.com"
license          "MIT"
description      "Configures nginx/Passenger stack for Capistrano deployments"
version          "0.0.1"
depends          "passenger"

recipe           "application::passenger", "Configures Rack-based application for nginx/Passenger stack"

%w{ubuntu debian}.each do |os|
  supports os
end