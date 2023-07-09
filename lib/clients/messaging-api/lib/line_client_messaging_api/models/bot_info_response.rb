=begin
#LINE Messaging API

#This document describes LINE Messaging API.

The version of the OpenAPI document: 0.0.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'date'
require 'time'

module LINE::Client::MessagingApi
  class BotInfoResponse
    # Bot's user ID
    attr_accessor :user_id

    # Bot's basic ID
    attr_accessor :basic_id

    # Bot's premium ID. Not included in the response if the premium ID isn't set.
    attr_accessor :premium_id

    # Bot's display name
    attr_accessor :display_name

    # Profile image URL. `https` image URL. Not included in the response if the bot doesn't have a profile image.
    attr_accessor :picture_url

    # Chat settings set in the LINE Official Account Manager. One of:  `chat`: Chat is set to \"On\". `bot`: Chat is set to \"Off\". 
    attr_accessor :chat_mode

    # Automatic read setting for messages. If the chat is set to \"Off\", auto is returned. If the chat is set to \"On\", manual is returned.  `auto`: Auto read setting is enabled. `manual`: Auto read setting is disabled.  
    attr_accessor :mark_as_read_mode

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
        :'user_id' => :'userId',
        :'basic_id' => :'basicId',
        :'premium_id' => :'premiumId',
        :'display_name' => :'displayName',
        :'picture_url' => :'pictureUrl',
        :'chat_mode' => :'chatMode',
        :'mark_as_read_mode' => :'markAsReadMode'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'user_id' => :'String',
        :'basic_id' => :'String',
        :'premium_id' => :'String',
        :'display_name' => :'String',
        :'picture_url' => :'String',
        :'chat_mode' => :'String',
        :'mark_as_read_mode' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `LINE::Client::MessagingApi::BotInfoResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LINE::Client::MessagingApi::BotInfoResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'basic_id')
        self.basic_id = attributes[:'basic_id']
      end

      if attributes.key?(:'premium_id')
        self.premium_id = attributes[:'premium_id']
      end

      if attributes.key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.key?(:'picture_url')
        self.picture_url = attributes[:'picture_url']
      end

      if attributes.key?(:'chat_mode')
        self.chat_mode = attributes[:'chat_mode']
      end

      if attributes.key?(:'mark_as_read_mode')
        self.mark_as_read_mode = attributes[:'mark_as_read_mode']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @user_id.nil?
        invalid_properties.push('invalid value for "user_id", user_id cannot be nil.')
      end

      if @basic_id.nil?
        invalid_properties.push('invalid value for "basic_id", basic_id cannot be nil.')
      end

      if @display_name.nil?
        invalid_properties.push('invalid value for "display_name", display_name cannot be nil.')
      end

      if @chat_mode.nil?
        invalid_properties.push('invalid value for "chat_mode", chat_mode cannot be nil.')
      end

      if @mark_as_read_mode.nil?
        invalid_properties.push('invalid value for "mark_as_read_mode", mark_as_read_mode cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @user_id.nil?
      return false if @basic_id.nil?
      return false if @display_name.nil?
      return false if @chat_mode.nil?
      chat_mode_validator = EnumAttributeValidator.new('String', ["chat", "bot"])
      return false unless chat_mode_validator.valid?(@chat_mode)
      return false if @mark_as_read_mode.nil?
      mark_as_read_mode_validator = EnumAttributeValidator.new('String', ["auto", "manual"])
      return false unless mark_as_read_mode_validator.valid?(@mark_as_read_mode)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] chat_mode Object to be assigned
    def chat_mode=(chat_mode)
      validator = EnumAttributeValidator.new('String', ["chat", "bot"])
      unless validator.valid?(chat_mode)
        fail ArgumentError, "invalid value for \"chat_mode\", must be one of #{validator.allowable_values}."
      end
      @chat_mode = chat_mode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mark_as_read_mode Object to be assigned
    def mark_as_read_mode=(mark_as_read_mode)
      validator = EnumAttributeValidator.new('String', ["auto", "manual"])
      unless validator.valid?(mark_as_read_mode)
        fail ArgumentError, "invalid value for \"mark_as_read_mode\", must be one of #{validator.allowable_values}."
      end
      @mark_as_read_mode = mark_as_read_mode
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          user_id == o.user_id &&
          basic_id == o.basic_id &&
          premium_id == o.premium_id &&
          display_name == o.display_name &&
          picture_url == o.picture_url &&
          chat_mode == o.chat_mode &&
          mark_as_read_mode == o.mark_as_read_mode
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [user_id, basic_id, premium_id, display_name, picture_url, chat_mode, mark_as_read_mode].hash
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
        klass = LINE::Client::MessagingApi.const_get(type)
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
