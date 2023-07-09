# LINE::Client::ChannelAccessToken

This document describes Channel Access Token API.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 0.0.1
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build line-bot-api.gemspec
```

Then either install the gem locally:

```shell
gem install ./line-bot-api-1.0.0.gem
```

(for development, run `gem install --dev ./line-bot-api-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'line-bot-api', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'line-bot-api', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'line-bot-api'

# Setup authorization
LINE::Client::ChannelAccessToken.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
  # Configure a proc to get access tokens in lieu of the static access_token configuration
  config.access_token_getter = -> { 'YOUR TOKEN GETTER PROC' } 
end

api_instance = LINE::Client::ChannelAccessToken::ChannelAccessTokenApi.new
client_assertion_type = 'client_assertion_type_example' # String | `urn:ietf:params:oauth:client-assertion-type:jwt-bearer`
client_assertion = 'client_assertion_example' # String | A JSON Web Token (JWT) (opens new window)the client needs to create and sign with the private key.

begin
  result = api_instance.gets_all_valid_channel_access_token_key_ids(client_assertion_type, client_assertion)
  p result
rescue LINE::Client::ChannelAccessToken::ApiError => e
  puts "Exception when calling ChannelAccessTokenApi->gets_all_valid_channel_access_token_key_ids: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.line.me*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*LINE::Client::ChannelAccessToken::ChannelAccessTokenApi* | [**gets_all_valid_channel_access_token_key_ids**](docs/ChannelAccessTokenApi.md#gets_all_valid_channel_access_token_key_ids) | **GET** /oauth2/v2.1/tokens/kid | 
*LINE::Client::ChannelAccessToken::ChannelAccessTokenApi* | [**issue_channel_token**](docs/ChannelAccessTokenApi.md#issue_channel_token) | **POST** /v2/oauth/accessToken | 
*LINE::Client::ChannelAccessToken::ChannelAccessTokenApi* | [**issue_channel_token_by_jwt**](docs/ChannelAccessTokenApi.md#issue_channel_token_by_jwt) | **POST** /oauth2/v2.1/token | 
*LINE::Client::ChannelAccessToken::ChannelAccessTokenApi* | [**revoke_channel_token**](docs/ChannelAccessTokenApi.md#revoke_channel_token) | **POST** /v2/oauth/revoke | 
*LINE::Client::ChannelAccessToken::ChannelAccessTokenApi* | [**revoke_channel_token_by_jwt**](docs/ChannelAccessTokenApi.md#revoke_channel_token_by_jwt) | **POST** /oauth2/v2.1/revoke | 
*LINE::Client::ChannelAccessToken::ChannelAccessTokenApi* | [**verify_channel_token**](docs/ChannelAccessTokenApi.md#verify_channel_token) | **POST** /v2/oauth/verify | 
*LINE::Client::ChannelAccessToken::ChannelAccessTokenApi* | [**verify_channel_token_by_jwt**](docs/ChannelAccessTokenApi.md#verify_channel_token_by_jwt) | **GET** /oauth2/v2.1/verify | 


## Documentation for Models

 - [LINE::Client::ChannelAccessToken::ChannelAccessTokenKeyIdsResponse](docs/ChannelAccessTokenKeyIdsResponse.md)
 - [LINE::Client::ChannelAccessToken::ErrorResponse](docs/ErrorResponse.md)
 - [LINE::Client::ChannelAccessToken::IssueChannelAccessTokenResponse](docs/IssueChannelAccessTokenResponse.md)
 - [LINE::Client::ChannelAccessToken::IssueShortLivedChannelAccessTokenResponse](docs/IssueShortLivedChannelAccessTokenResponse.md)
 - [LINE::Client::ChannelAccessToken::VerifyChannelAccessTokenResponse](docs/VerifyChannelAccessTokenResponse.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### Bearer

- **Type**: Bearer authentication
