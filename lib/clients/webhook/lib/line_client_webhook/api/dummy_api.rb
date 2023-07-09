=begin
#Webhook Type Definition

#Webhook event definition of the LINE Messaging API

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'cgi'

module LINE::Client::Webhook
  class DummyApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # This is the dummy endpoint to generate the model classes
    # @param callback_request [CallbackRequest] 
    # @param [Hash] opts the optional parameters
    # @return [String]
    def callback(callback_request, opts = {})
      data, _status_code, _headers = callback_with_http_info(callback_request, opts)
      data
    end

    # This is the dummy endpoint to generate the model classes
    # @param callback_request [CallbackRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def callback_with_http_info(callback_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DummyApi.callback ...'
      end
      # verify the required parameter 'callback_request' is set
      if @api_client.config.client_side_validation && callback_request.nil?
        fail ArgumentError, "Missing the required parameter 'callback_request' when calling DummyApi.callback"
      end
      # resource path
      local_var_path = '/callback'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(callback_request)

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"DummyApi.callback",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DummyApi#callback\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
