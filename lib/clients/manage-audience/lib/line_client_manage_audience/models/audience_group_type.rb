=begin
#LINE Messaging API

#This document describes LINE Messaging API.

The version of the OpenAPI document: 0.0.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'date'
require 'time'

module LINE::Client::ManageAudience
  class AudienceGroupType
    UPLOAD = "UPLOAD".freeze
    CLICK = "CLICK".freeze
    IMP = "IMP".freeze
    CHAT_TAG = "CHAT_TAG".freeze
    FRIEND_PATH = "FRIEND_PATH".freeze
    RESERVATION = "RESERVATION".freeze
    APP_EVENT = "APP_EVENT".freeze
    VIDEO_VIEW = "VIDEO_VIEW".freeze
    WEBTRAFFIC = "WEBTRAFFIC".freeze
    IMAGE_CLICK = "IMAGE_CLICK".freeze

    def self.all_vars
      @all_vars ||= [UPLOAD, CLICK, IMP, CHAT_TAG, FRIEND_PATH, RESERVATION, APP_EVENT, VIDEO_VIEW, WEBTRAFFIC, IMAGE_CLICK].freeze
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
      return value if AudienceGroupType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #AudienceGroupType"
    end
  end
end