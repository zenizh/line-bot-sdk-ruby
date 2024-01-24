=begin
#LINE Messaging API

#This document describes LINE Messaging API.

The version of the OpenAPI document: 0.0.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.0

=end

require 'date'
require 'time'

module LINE::Client::ManageAudience
  class AudienceGroupJobFailedType
    INTERNAL_ERROR = "INTERNAL_ERROR".freeze
    AUDIENCE_GROUP_AUDIENCE_INSUFFICIENT = "AUDIENCE_GROUP_AUDIENCE_INSUFFICIENT".freeze

    def self.all_vars
      @all_vars ||= [INTERNAL_ERROR, AUDIENCE_GROUP_AUDIENCE_INSUFFICIENT].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if AudienceGroupJobFailedType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #AudienceGroupJobFailedType"
    end
  end
end
