=begin
#LINE Messaging API

#This document describes LINE Messaging API.

The version of the OpenAPI document: 0.0.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.0

=end

require 'cgi'

module LINE::Client::ModuleAttach
  class LineModuleAttachApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Attach by operation of the module channel provider
    # @param [Hash] opts the optional parameters
    # @option opts [String] :grant_type authorization_code
    # @option opts [String] :code Authorization code received from the LINE Platform.
    # @option opts [String] :redirect_uri Specify the redirect_uri specified in the URL for authentication and authorization.
    # @option opts [String] :code_verifier Specify when using PKCE (Proof Key for Code Exchange) defined in the OAuth 2.0 extension specification as a countermeasure against authorization code interception attacks.
    # @option opts [String] :client_id Instead of using Authorization header, you can use this parameter to specify the channel ID of the module channel. You can find the channel ID of the module channel in the LINE Developers Console. 
    # @option opts [String] :client_secret Instead of using Authorization header, you can use this parameter to specify the channel secret of the module channel. You can find the channel secret of the module channel in the LINE Developers Console. 
    # @option opts [String] :region If you specified a value for region in the URL for authentication and authorization, specify the same value. 
    # @option opts [String] :basic_search_id If you specified a value for basic_search_id in the URL for authentication and authorization, specify the same value.
    # @option opts [String] :scope If you specified a value for scope in the URL for authentication and authorization, specify the same value.
    # @option opts [String] :brand_type If you specified a value for brand_type in the URL for authentication and authorization, specify the same value.
    # @return [AttachModuleResponse]
    def attach_module(opts = {})
      data, _status_code, _headers = attach_module_with_http_info(opts)
      data
    end

    # Attach by operation of the module channel provider
    # @param [Hash] opts the optional parameters
    # @option opts [String] :grant_type authorization_code
    # @option opts [String] :code Authorization code received from the LINE Platform.
    # @option opts [String] :redirect_uri Specify the redirect_uri specified in the URL for authentication and authorization.
    # @option opts [String] :code_verifier Specify when using PKCE (Proof Key for Code Exchange) defined in the OAuth 2.0 extension specification as a countermeasure against authorization code interception attacks.
    # @option opts [String] :client_id Instead of using Authorization header, you can use this parameter to specify the channel ID of the module channel. You can find the channel ID of the module channel in the LINE Developers Console. 
    # @option opts [String] :client_secret Instead of using Authorization header, you can use this parameter to specify the channel secret of the module channel. You can find the channel secret of the module channel in the LINE Developers Console. 
    # @option opts [String] :region If you specified a value for region in the URL for authentication and authorization, specify the same value. 
    # @option opts [String] :basic_search_id If you specified a value for basic_search_id in the URL for authentication and authorization, specify the same value.
    # @option opts [String] :scope If you specified a value for scope in the URL for authentication and authorization, specify the same value.
    # @option opts [String] :brand_type If you specified a value for brand_type in the URL for authentication and authorization, specify the same value.
    # @return [Array<(AttachModuleResponse, Integer, Hash)>] AttachModuleResponse data, response status code and response headers
    def attach_module_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LineModuleAttachApi.attach_module ...'
      end
      # resource path
      local_var_path = '/module/auth/v1/token'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['grant_type'] = opts[:'grant_type'] if !opts[:'grant_type'].nil?
      form_params['code'] = opts[:'code'] if !opts[:'code'].nil?
      form_params['redirect_uri'] = opts[:'redirect_uri'] if !opts[:'redirect_uri'].nil?
      form_params['code_verifier'] = opts[:'code_verifier'] if !opts[:'code_verifier'].nil?
      form_params['client_id'] = opts[:'client_id'] if !opts[:'client_id'].nil?
      form_params['client_secret'] = opts[:'client_secret'] if !opts[:'client_secret'].nil?
      form_params['region'] = opts[:'region'] if !opts[:'region'].nil?
      form_params['basic_search_id'] = opts[:'basic_search_id'] if !opts[:'basic_search_id'].nil?
      form_params['scope'] = opts[:'scope'] if !opts[:'scope'].nil?
      form_params['brand_type'] = opts[:'brand_type'] if !opts[:'brand_type'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AttachModuleResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"LineModuleAttachApi.attach_module",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LineModuleAttachApi#attach_module\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
