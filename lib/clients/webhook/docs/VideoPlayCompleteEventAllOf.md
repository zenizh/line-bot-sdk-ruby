# LINE::Client::Webhook::VideoPlayCompleteEventAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reply_token** | **String** | Reply token used to send reply message to this event |  |
| **video_play_complete** | [**VideoPlayComplete**](VideoPlayComplete.md) |  |  |

## Example

```ruby
require 'line_client_webhook'

instance = LINE::Client::Webhook::VideoPlayCompleteEventAllOf.new(
  reply_token: null,
  video_play_complete: null
)
```
