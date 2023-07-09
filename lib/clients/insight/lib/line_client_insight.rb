=begin
#LINE Messaging API(Insight)

#This document describes LINE Messaging API(Insight).

The version of the OpenAPI document: 0.0.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

# Common files
require 'line_client_insight/api_client'
require 'line_client_insight/api_error'
require 'line_client_insight/version'
require 'line_client_insight/configuration'

# Models
require 'line_client_insight/models/age_tile'
require 'line_client_insight/models/app_type_tile'
require 'line_client_insight/models/area_tile'
require 'line_client_insight/models/error_detail'
require 'line_client_insight/models/error_response'
require 'line_client_insight/models/gender_tile'
require 'line_client_insight/models/get_friends_demographics_response'
require 'line_client_insight/models/get_message_event_response'
require 'line_client_insight/models/get_message_event_response_click'
require 'line_client_insight/models/get_message_event_response_message'
require 'line_client_insight/models/get_message_event_response_overview'
require 'line_client_insight/models/get_number_of_followers_response'
require 'line_client_insight/models/get_number_of_message_deliveries_response'
require 'line_client_insight/models/get_statistics_per_unit_response'
require 'line_client_insight/models/get_statistics_per_unit_response_click'
require 'line_client_insight/models/get_statistics_per_unit_response_message'
require 'line_client_insight/models/get_statistics_per_unit_response_overview'
require 'line_client_insight/models/subscription_period_tile'

# APIs
require 'line_client_insight/api/insight_api'

module LINE::Client::Insight
  class << self
    # Customize default settings for the SDK using block.
    #   LINE::Client::Insight.configure do |config|
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
