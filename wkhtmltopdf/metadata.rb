maintainer       "Freeport Metrics"
maintainer_email "info@freeportmetrics.com"
license          "MIT"
description      "Installs wkhtmltopdf package"
version          "0.0.1"

recipe           "wkhtmltopdf::install", "Installs wkhtmltopdf package"

%w{ubuntu debian}.each do |os|
  supports os
end