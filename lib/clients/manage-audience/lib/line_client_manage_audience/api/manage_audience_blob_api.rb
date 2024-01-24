=begin
#LINE Messaging API

#This document describes LINE Messaging API.

The version of the OpenAPI document: 0.0.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.0

=end

require 'cgi'

module LINE::Client::ManageAudience
  class ManageAudienceBlobApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add user IDs or Identifiers for Advertisers (IFAs) to an audience for uploading user IDs (by file).
    # @param file [File] A text file with one user ID or IFA entered per line. Specify text/plain as Content-Type. Max file number: 1 Max number: 1,500,000 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :audience_group_id The audience ID.
    # @option opts [String] :upload_description The description to register with the job
    # @return [nil]
    def add_user_ids_to_audience(file, opts = {})
      add_user_ids_to_audience_with_http_info(file, opts)
      nil
    end

    # Add user IDs or Identifiers for Advertisers (IFAs) to an audience for uploading user IDs (by file).
    # @param file [File] A text file with one user ID or IFA entered per line. Specify text/plain as Content-Type. Max file number: 1 Max number: 1,500,000 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :audience_group_id The audience ID.
    # @option opts [String] :upload_description The description to register with the job
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def add_user_ids_to_audience_with_http_info(file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManageAudienceBlobApi.add_user_ids_to_audience ...'
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling ManageAudienceBlobApi.add_user_ids_to_audience"
      end
      # resource path
      local_var_path = '/v2/bot/audienceGroup/upload/byFile'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['file'] = file
      form_params['audienceGroupId'] = opts[:'audience_group_id'] if !opts[:'audience_group_id'].nil?
      form_params['uploadDescription'] = opts[:'upload_description'] if !opts[:'upload_description'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"ManageAudienceBlobApi.add_user_ids_to_audience",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManageAudienceBlobApi#add_user_ids_to_audience\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create audience for uploading user IDs (by file).
    # @param file [File] A text file with one user ID or IFA entered per line. Specify text/plain as Content-Type. Max file number: 1 Max number: 1,500,000 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :description The audience&#39;s name. This is case-insensitive, meaning AUDIENCE and audience are considered identical. Max character limit: 120 
    # @option opts [Boolean] :is_ifa_audience To specify recipients by IFAs: set &#x60;true&#x60;. To specify recipients by user IDs: set &#x60;false&#x60; or omit isIfaAudience property. 
    # @option opts [String] :upload_description The description to register for the job (in &#x60;jobs[].description&#x60;). 
    # @return [CreateAudienceGroupResponse]
    def create_audience_for_uploading_user_ids(file, opts = {})
      data, _status_code, _headers = create_audience_for_uploading_user_ids_with_http_info(file, opts)
      data
    end

    # Create audience for uploading user IDs (by file).
    # @param file [File] A text file with one user ID or IFA entered per line. Specify text/plain as Content-Type. Max file number: 1 Max number: 1,500,000 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :description The audience&#39;s name. This is case-insensitive, meaning AUDIENCE and audience are considered identical. Max character limit: 120 
    # @option opts [Boolean] :is_ifa_audience To specify recipients by IFAs: set &#x60;true&#x60;. To specify recipients by user IDs: set &#x60;false&#x60; or omit isIfaAudience property. 
    # @option opts [String] :upload_description The description to register for the job (in &#x60;jobs[].description&#x60;). 
    # @return [Array<(CreateAudienceGroupResponse, Integer, Hash)>] CreateAudienceGroupResponse data, response status code and response headers
    def create_audience_for_uploading_user_ids_with_http_info(file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManageAudienceBlobApi.create_audience_for_uploading_user_ids ...'
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling ManageAudienceBlobApi.create_audience_for_uploading_user_ids"
      end
      if @api_client.config.client_side_validation && !opts[:'description'].nil? && opts[:'description'].to_s.length > 120
        fail ArgumentError, 'invalid value for "opts[:"description"]" when calling ManageAudienceBlobApi.create_audience_for_uploading_user_ids, the character length must be smaller than or equal to 120.'
      end

      # resource path
      local_var_path = '/v2/bot/audienceGroup/upload/byFile'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['file'] = file
      form_params['description'] = opts[:'description'] if !opts[:'description'].nil?
      form_params['isIfaAudience'] = opts[:'is_ifa_audience'] if !opts[:'is_ifa_audience'].nil?
      form_params['uploadDescription'] = opts[:'upload_description'] if !opts[:'upload_description'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CreateAudienceGroupResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"ManageAudienceBlobApi.create_audience_for_uploading_user_ids",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManageAudienceBlobApi#create_audience_for_uploading_user_ids\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
