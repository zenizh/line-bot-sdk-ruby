=begin
#LIFF server API

#LIFF Server API.

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

# Common files
require 'line_client_liff/api_client'
require 'line_client_liff/api_error'
require 'line_client_liff/version'
require 'line_client_liff/configuration'

# Models
require 'line_client_liff/models/add_liff_app_request'
require 'line_client_liff/models/add_liff_app_response'
require 'line_client_liff/models/get_all_liff_apps_response'
require 'line_client_liff/models/liff_app'
require 'line_client_liff/models/liff_bot_prompt'
require 'line_client_liff/models/liff_features'
require 'line_client_liff/models/liff_scope'
require 'line_client_liff/models/liff_view'
require 'line_client_liff/models/update_liff_app_request'

# APIs
require 'line_client_liff/api/liff_api'

module LINE::Client::Liff
  class << self
    # Customize default settings for the SDK using block.
    #   LINE::Client::Liff.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
