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
  class AudienceGroupStatus
    IN_PROGRESS = "IN_PROGRESS".freeze
    READY = "READY".freeze
    FAILED = "FAILED".freeze
    EXPIRED = "EXPIRED".freeze
    INACTIVE = "INACTIVE".freeze
    ACTIVATING = "ACTIVATING".freeze

    def self.all_vars
      @all_vars ||= [IN_PROGRESS, READY, FAILED, EXPIRED, INACTIVE, ACTIVATING].freeze
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
      return value if AudienceGroupStatus.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #AudienceGroupStatus"
    end
  end
end
