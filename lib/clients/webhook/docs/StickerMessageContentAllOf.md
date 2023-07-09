# LINE::Client::Webhook::StickerMessageContentAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Message ID |  |
| **package_id** | **String** | Package ID |  |
| **sticker_id** | **String** | Sticker ID |  |
| **sticker_resource_type** | **String** |  |  |
| **keywords** | **Array&lt;String&gt;** | Array of up to 15 keywords describing the sticker. If a sticker has 16 or more keywords, a random selection of 15 keywords will be returned. The keyword selection is random for each event, so different keywords may be returned for the same sticker.  | [optional] |
| **text** | **String** | Any text entered by the user. This property is only included for message stickers. Max character limit: 100  | [optional] |

## Example

```ruby
require 'line_client_webhook'

instance = LINE::Client::Webhook::StickerMessageContentAllOf.new(
  id: null,
  package_id: null,
  sticker_id: null,
  sticker_resource_type: null,
  keywords: null,
  text: null
)
```
