=begin
#LINE Messaging API

#This document describes LINE Messaging API.

The version of the OpenAPI document: 0.0.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.0

=end

# Common files
require 'line_client_messaging_api/api_client'
require 'line_client_messaging_api/api_error'
require 'line_client_messaging_api/version'
require 'line_client_messaging_api/configuration'

# Models
require 'line_client_messaging_api/models/action'
require 'line_client_messaging_api/models/age_demographic'
require 'line_client_messaging_api/models/alt_uri'
require 'line_client_messaging_api/models/app_type_demographic'
require 'line_client_messaging_api/models/area_demographic'
require 'line_client_messaging_api/models/audience_match_messages_request'
require 'line_client_messaging_api/models/bot_info_response'
require 'line_client_messaging_api/models/broadcast_request'
require 'line_client_messaging_api/models/carousel_column'
require 'line_client_messaging_api/models/chat_reference'
require 'line_client_messaging_api/models/create_rich_menu_alias_request'
require 'line_client_messaging_api/models/demographic_filter'
require 'line_client_messaging_api/models/emoji'
require 'line_client_messaging_api/models/error_detail'
require 'line_client_messaging_api/models/error_response'
require 'line_client_messaging_api/models/filter'
require 'line_client_messaging_api/models/flex_block_style'
require 'line_client_messaging_api/models/flex_box_background'
require 'line_client_messaging_api/models/flex_bubble_styles'
require 'line_client_messaging_api/models/flex_component'
require 'line_client_messaging_api/models/flex_container'
require 'line_client_messaging_api/models/gender_demographic'
require 'line_client_messaging_api/models/get_aggregation_unit_name_list_response'
require 'line_client_messaging_api/models/get_aggregation_unit_usage_response'
require 'line_client_messaging_api/models/get_followers_response'
require 'line_client_messaging_api/models/get_message_content_transcoding_response'
require 'line_client_messaging_api/models/get_webhook_endpoint_response'
require 'line_client_messaging_api/models/group_member_count_response'
require 'line_client_messaging_api/models/group_summary_response'
require 'line_client_messaging_api/models/group_user_profile_response'
require 'line_client_messaging_api/models/image_carousel_column'
require 'line_client_messaging_api/models/imagemap_action'
require 'line_client_messaging_api/models/imagemap_area'
require 'line_client_messaging_api/models/imagemap_base_size'
require 'line_client_messaging_api/models/imagemap_external_link'
require 'line_client_messaging_api/models/imagemap_video'
require 'line_client_messaging_api/models/issue_link_token_response'
require 'line_client_messaging_api/models/limit'
require 'line_client_messaging_api/models/mark_messages_as_read_request'
require 'line_client_messaging_api/models/members_ids_response'
require 'line_client_messaging_api/models/message'
require 'line_client_messaging_api/models/message_quota_response'
require 'line_client_messaging_api/models/multicast_request'
require 'line_client_messaging_api/models/narrowcast_progress_response'
require 'line_client_messaging_api/models/narrowcast_request'
require 'line_client_messaging_api/models/number_of_messages_response'
require 'line_client_messaging_api/models/pnp_messages_request'
require 'line_client_messaging_api/models/push_message_request'
require 'line_client_messaging_api/models/quick_reply'
require 'line_client_messaging_api/models/quick_reply_item'
require 'line_client_messaging_api/models/quota_consumption_response'
require 'line_client_messaging_api/models/quota_type'
require 'line_client_messaging_api/models/recipient'
require 'line_client_messaging_api/models/reply_message_request'
require 'line_client_messaging_api/models/rich_menu_alias_list_response'
require 'line_client_messaging_api/models/rich_menu_alias_response'
require 'line_client_messaging_api/models/rich_menu_area'
require 'line_client_messaging_api/models/rich_menu_batch_operation'
require 'line_client_messaging_api/models/rich_menu_batch_progress_phase'
require 'line_client_messaging_api/models/rich_menu_batch_progress_response'
require 'line_client_messaging_api/models/rich_menu_batch_request'
require 'line_client_messaging_api/models/rich_menu_bounds'
require 'line_client_messaging_api/models/rich_menu_bulk_link_request'
require 'line_client_messaging_api/models/rich_menu_bulk_unlink_request'
require 'line_client_messaging_api/models/rich_menu_id_response'
require 'line_client_messaging_api/models/rich_menu_list_response'
require 'line_client_messaging_api/models/rich_menu_request'
require 'line_client_messaging_api/models/rich_menu_response'
require 'line_client_messaging_api/models/rich_menu_size'
require 'line_client_messaging_api/models/room_member_count_response'
require 'line_client_messaging_api/models/room_user_profile_response'
require 'line_client_messaging_api/models/sender'
require 'line_client_messaging_api/models/set_webhook_endpoint_request'
require 'line_client_messaging_api/models/subscription_period_demographic'
require 'line_client_messaging_api/models/template'
require 'line_client_messaging_api/models/test_webhook_endpoint_request'
require 'line_client_messaging_api/models/test_webhook_endpoint_response'
require 'line_client_messaging_api/models/update_rich_menu_alias_request'
require 'line_client_messaging_api/models/user_profile_response'
require 'line_client_messaging_api/models/validate_message_request'
require 'line_client_messaging_api/models/age_demographic_filter'
require 'line_client_messaging_api/models/app_type_demographic_filter'
require 'line_client_messaging_api/models/area_demographic_filter'
require 'line_client_messaging_api/models/audience_recipient'
require 'line_client_messaging_api/models/audio_message'
require 'line_client_messaging_api/models/buttons_template'
require 'line_client_messaging_api/models/camera_action'
require 'line_client_messaging_api/models/camera_roll_action'
require 'line_client_messaging_api/models/carousel_template'
require 'line_client_messaging_api/models/confirm_template'
require 'line_client_messaging_api/models/datetime_picker_action'
require 'line_client_messaging_api/models/flex_box'
require 'line_client_messaging_api/models/flex_box_linear_gradient'
require 'line_client_messaging_api/models/flex_bubble'
require 'line_client_messaging_api/models/flex_button'
require 'line_client_messaging_api/models/flex_carousel'
require 'line_client_messaging_api/models/flex_filler'
require 'line_client_messaging_api/models/flex_icon'
require 'line_client_messaging_api/models/flex_image'
require 'line_client_messaging_api/models/flex_message'
require 'line_client_messaging_api/models/flex_separator'
require 'line_client_messaging_api/models/flex_span'
require 'line_client_messaging_api/models/flex_text'
require 'line_client_messaging_api/models/flex_video'
require 'line_client_messaging_api/models/gender_demographic_filter'
require 'line_client_messaging_api/models/image_carousel_template'
require 'line_client_messaging_api/models/image_message'
require 'line_client_messaging_api/models/imagemap_message'
require 'line_client_messaging_api/models/location_action'
require 'line_client_messaging_api/models/location_message'
require 'line_client_messaging_api/models/message_action'
require 'line_client_messaging_api/models/message_imagemap_action'
require 'line_client_messaging_api/models/operator_demographic_filter'
require 'line_client_messaging_api/models/operator_recipient'
require 'line_client_messaging_api/models/postback_action'
require 'line_client_messaging_api/models/redelivery_recipient'
require 'line_client_messaging_api/models/rich_menu_batch_link_operation'
require 'line_client_messaging_api/models/rich_menu_batch_unlink_all_operation'
require 'line_client_messaging_api/models/rich_menu_batch_unlink_operation'
require 'line_client_messaging_api/models/rich_menu_switch_action'
require 'line_client_messaging_api/models/sticker_message'
require 'line_client_messaging_api/models/subscription_period_demographic_filter'
require 'line_client_messaging_api/models/template_message'
require 'line_client_messaging_api/models/text_message'
require 'line_client_messaging_api/models/uri_action'
require 'line_client_messaging_api/models/uri_imagemap_action'
require 'line_client_messaging_api/models/video_message'

# APIs
require 'line_client_messaging_api/api/messaging_api_api'
require 'line_client_messaging_api/api/messaging_api_blob_api'

module LINE::Client::MessagingApi
  class << self
    # Customize default settings for the SDK using block.
    #   LINE::Client::MessagingApi.configure do |config|
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
