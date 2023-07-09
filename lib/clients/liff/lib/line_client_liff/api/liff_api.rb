=begin
#LIFF server API

#LIFF Server API.

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'cgi'

module LINE::Client::Liff
  class LiffApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get all LIFF apps
    # Gets information on all the LIFF apps added to the channel.
    # @param [Hash] opts the optional parameters
    # @return [GetAllLiffAppsResponse]
    def liff_v1_apps_get(opts = {})
      data, _status_code, _headers = liff_v1_apps_get_with_http_info(opts)
      data
    end

    # Get all LIFF apps
    # Gets information on all the LIFF apps added to the channel.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetAllLiffAppsResponse, Integer, Hash)>] GetAllLiffAppsResponse data, response status code and response headers
    def liff_v1_apps_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LiffApi.liff_v1_apps_get ...'
      end
      # resource path
      local_var_path = '/liff/v1/apps'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetAllLiffAppsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"LiffApi.liff_v1_apps_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LiffApi#liff_v1_apps_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete LIFF app from a channel
    # Deletes a LIFF app from a channel. 
    # @param liff_id [String] ID of the LIFF app to be updated
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def liff_v1_apps_liff_id_delete(liff_id, opts = {})
      liff_v1_apps_liff_id_delete_with_http_info(liff_id, opts)
      nil
    end

    # Delete LIFF app from a channel
    # Deletes a LIFF app from a channel. 
    # @param liff_id [String] ID of the LIFF app to be updated
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def liff_v1_apps_liff_id_delete_with_http_info(liff_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LiffApi.liff_v1_apps_liff_id_delete ...'
      end
      # verify the required parameter 'liff_id' is set
      if @api_client.config.client_side_validation && liff_id.nil?
        fail ArgumentError, "Missing the required parameter 'liff_id' when calling LiffApi.liff_v1_apps_liff_id_delete"
      end
      # resource path
      local_var_path = '/liff/v1/apps/{liffId}'.sub('{' + 'liffId' + '}', CGI.escape(liff_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"LiffApi.liff_v1_apps_liff_id_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LiffApi#liff_v1_apps_liff_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update LIFF app settings
    # @param liff_id [String] ID of the LIFF app to be updated
    # @param update_liff_app_request [UpdateLiffAppRequest] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def liff_v1_apps_liff_id_put(liff_id, update_liff_app_request, opts = {})
      liff_v1_apps_liff_id_put_with_http_info(liff_id, update_liff_app_request, opts)
      nil
    end

    # Update LIFF app settings
    # @param liff_id [String] ID of the LIFF app to be updated
    # @param update_liff_app_request [UpdateLiffAppRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def liff_v1_apps_liff_id_put_with_http_info(liff_id, update_liff_app_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LiffApi.liff_v1_apps_liff_id_put ...'
      end
      # verify the required parameter 'liff_id' is set
      if @api_client.config.client_side_validation && liff_id.nil?
        fail ArgumentError, "Missing the required parameter 'liff_id' when calling LiffApi.liff_v1_apps_liff_id_put"
      end
      # verify the required parameter 'update_liff_app_request' is set
      if @api_client.config.client_side_validation && update_liff_app_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_liff_app_request' when calling LiffApi.liff_v1_apps_liff_id_put"
      end
      # resource path
      local_var_path = '/liff/v1/apps/{liffId}'.sub('{' + 'liffId' + '}', CGI.escape(liff_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_liff_app_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"LiffApi.liff_v1_apps_liff_id_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LiffApi#liff_v1_apps_liff_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adding the LIFF app to a channel
    # @param add_liff_app_request [AddLiffAppRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AddLiffAppResponse]
    def liff_v1_apps_post(add_liff_app_request, opts = {})
      data, _status_code, _headers = liff_v1_apps_post_with_http_info(add_liff_app_request, opts)
      data
    end

    # Adding the LIFF app to a channel
    # @param add_liff_app_request [AddLiffAppRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AddLiffAppResponse, Integer, Hash)>] AddLiffAppResponse data, response status code and response headers
    def liff_v1_apps_post_with_http_info(add_liff_app_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LiffApi.liff_v1_apps_post ...'
      end
      # verify the required parameter 'add_liff_app_request' is set
      if @api_client.config.client_side_validation && add_liff_app_request.nil?
        fail ArgumentError, "Missing the required parameter 'add_liff_app_request' when calling LiffApi.liff_v1_apps_post"
      end
      # resource path
      local_var_path = '/liff/v1/apps'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(add_liff_app_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AddLiffAppResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"LiffApi.liff_v1_apps_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LiffApi#liff_v1_apps_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
