maintainer       "Freeport Metrics"
maintainer_email "info@freeportmetrics.com"
license          "MIT"
description      "Configures monitoring templates for Monit"
version          "0.0.1"
depends          "monit"

recipe           "monitoring::mysql", "Configures MySQL template for Monit"

%w{ubuntu debian}.each do |os|
  supports os
end