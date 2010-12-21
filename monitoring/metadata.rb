maintainer       "Freeport Metrics"
maintainer_email "info@freeportmetrics.com"
license          "MIT"
description      "Configures monitoring templates for Monit"
version          "0.0.2"
depends          "monit"

recipe           "monitoring::mysql", "Configures MySQL template for Monit"
recipe           "monitoring::nginx", "Configures MySQL template for nginx/Passenger"

%w{ubuntu debian}.each do |os|
  supports os
end