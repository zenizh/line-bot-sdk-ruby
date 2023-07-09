=begin
#Webhook Type Definition

#Webhook event definition of the LINE Messaging API

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'date'
require 'time'

module LINE::Client::Webhook
  # Message object which contains the sticker data sent from the source.
  class StickerMessageContentAllOf
    # Message ID
    attr_accessor :id

    # Package ID
    attr_accessor :package_id

    # Sticker ID
    attr_accessor :sticker_id

    attr_accessor :sticker_resource_type

    # Array of up to 15 keywords describing the sticker. If a sticker has 16 or more keywords, a random selection of 15 keywords will be returned. The keyword selection is random for each event, so different keywords may be returned for the same sticker. 
    attr_accessor :keywords

    # Any text entered by the user. This property is only included for message stickers. Max character limit: 100 
    attr_accessor :text

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'package_id' => :'packageId',
        :'sticker_id' => :'stickerId',
        :'sticker_resource_type' => :'stickerResourceType',
        :'keywords' => :'keywords',
        :'text' => :'text'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'package_id' => :'String',
        :'sticker_id' => :'String',
        :'sticker_resource_type' => :'String',
        :'keywords' => :'Array<String>',
        :'text' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `LINE::Client::Webhook::StickerMessageContentAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LINE::Client::Webhook::StickerMessageContentAllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'package_id')
        self.package_id = attributes[:'package_id']
      end

      if attributes.key?(:'sticker_id')
        self.sticker_id = attributes[:'sticker_id']
      end

      if attributes.key?(:'sticker_resource_type')
        self.sticker_resource_type = attributes[:'sticker_resource_type']
      end

      if attributes.key?(:'keywords')
        if (value = attributes[:'keywords']).is_a?(Array)
          self.keywords = value
        end
      end

      if attributes.key?(:'text')
        self.text = attributes[:'text']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @package_id.nil?
        invalid_properties.push('invalid value for "package_id", package_id cannot be nil.')
      end

      if @sticker_id.nil?
        invalid_properties.push('invalid value for "sticker_id", sticker_id cannot be nil.')
      end

      if @sticker_resource_type.nil?
        invalid_properties.push('invalid value for "sticker_resource_type", sticker_resource_type cannot be nil.')
      end

      if !@keywords.nil? && @keywords.length > 15
        invalid_properties.push('invalid value for "keywords", number of items must be less than or equal to 15.')
      end

      if !@text.nil? && @text.to_s.length > 100
        invalid_properties.push('invalid value for "text", the character length must be smaller than or equal to 100.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @package_id.nil?
      return false if @sticker_id.nil?
      return false if @sticker_resource_type.nil?
      sticker_resource_type_validator = EnumAttributeValidator.new('String', ["STATIC", "ANIMATION", "SOUND", "ANIMATION_SOUND", "POPUP", "POPUP_SOUND", "CUSTOM", "MESSAGE", "NAME_TEXT", "PER_STICKER_TEXT"])
      return false unless sticker_resource_type_validator.valid?(@sticker_resource_type)
      return false if !@keywords.nil? && @keywords.length > 15
      return false if !@text.nil? && @text.to_s.length > 100
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sticker_resource_type Object to be assigned
    def sticker_resource_type=(sticker_resource_type)
      validator = EnumAttributeValidator.new('String', ["STATIC", "ANIMATION", "SOUND", "ANIMATION_SOUND", "POPUP", "POPUP_SOUND", "CUSTOM", "MESSAGE", "NAME_TEXT", "PER_STICKER_TEXT"])
      unless validator.valid?(sticker_resource_type)
        fail ArgumentError, "invalid value for \"sticker_resource_type\", must be one of #{validator.allowable_values}."
      end
      @sticker_resource_type = sticker_resource_type
    end

    # Custom attribute writer method with validation
    # @param [Object] keywords Value to be assigned
    def keywords=(keywords)
      if !keywords.nil? && keywords.length > 15
        fail ArgumentError, 'invalid value for "keywords", number of items must be less than or equal to 15.'
      end

      @keywords = keywords
    end

    # Custom attribute writer method with validation
    # @param [Object] text Value to be assigned
    def text=(text)
      if !text.nil? && text.to_s.length > 100
        fail ArgumentError, 'invalid value for "text", the character length must be smaller than or equal to 100.'
      end

      @text = text
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          package_id == o.package_id &&
          sticker_id == o.sticker_id &&
          sticker_resource_type == o.sticker_resource_type &&
          keywords == o.keywords &&
          text == o.text
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, package_id, sticker_id, sticker_resource_type, keywords, text].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = LINE::Client::Webhook.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
