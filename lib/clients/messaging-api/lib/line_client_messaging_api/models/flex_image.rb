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
  class FlexImage < FlexComponent
    # Image URL (Max character limit: 2000) Protocol: HTTPS (TLS 1.2 or later) Image format: JPEG or PNG Maximum image size: 1024×1024 pixels Maximum file size: 10 MB (300 KB when the animated property is true) 
    attr_accessor :url

    # The ratio of the width or height of this component within the parent box.
    attr_accessor :flex

    # The minimum amount of space to include before this component in its parent container. 
    attr_accessor :margin

    # Reference for offsetTop, offsetBottom, offsetStart, and offsetEnd. Specify one of the following values:  `relative`: Use the previous box as reference. `absolute`: Use the top left of parent element as reference. The default value is relative. 
    attr_accessor :position

    # Offset.
    attr_accessor :offset_top

    # Offset.
    attr_accessor :offset_bottom

    # Offset.
    attr_accessor :offset_start

    # Offset.
    attr_accessor :offset_end

    # Alignment style in horizontal direction. 
    attr_accessor :align

    # Alignment style in vertical direction.
    attr_accessor :gravity

    # The maximum image width. This is md by default. 
    attr_accessor :size

    # Aspect ratio of the image. `{width}:{height}` format. Specify the value of `{width}` and `{height}` in the range from `1` to `100000`. However, you cannot set `{height}` to a value that is more than three times the value of `{width}`. The default value is `1:1`. 
    attr_accessor :aspect_ratio

    # The display style of the image if the aspect ratio of the image and that specified by the aspectRatio property do not match. 
    attr_accessor :aspect_mode

    # Background color of the image. Use a hexadecimal color code.
    attr_accessor :background_color

    attr_accessor :action

    # When this is `true`, an animated image (APNG) plays. You can specify a value of true up to 10 images in a single message. You can't send messages that exceed this limit. This is `false` by default. Animated images larger than 300 KB aren't played back. 
    attr_accessor :animated

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
        :'url' => :'url',
        :'flex' => :'flex',
        :'margin' => :'margin',
        :'position' => :'position',
        :'offset_top' => :'offsetTop',
        :'offset_bottom' => :'offsetBottom',
        :'offset_start' => :'offsetStart',
        :'offset_end' => :'offsetEnd',
        :'align' => :'align',
        :'gravity' => :'gravity',
        :'size' => :'size',
        :'aspect_ratio' => :'aspectRatio',
        :'aspect_mode' => :'aspectMode',
        :'background_color' => :'backgroundColor',
        :'action' => :'action',
        :'animated' => :'animated'
      }
    end

    # Returns all the JSON keys this model knows about, including the ones defined in its parent(s)
    def self.acceptable_attributes
      attribute_map.values.concat(superclass.acceptable_attributes)
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'url' => :'String',
        :'flex' => :'Integer',
        :'margin' => :'String',
        :'position' => :'String',
        :'offset_top' => :'String',
        :'offset_bottom' => :'String',
        :'offset_start' => :'String',
        :'offset_end' => :'String',
        :'align' => :'String',
        :'gravity' => :'String',
        :'size' => :'String',
        :'aspect_ratio' => :'String',
        :'aspect_mode' => :'String',
        :'background_color' => :'String',
        :'action' => :'Action',
        :'animated' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'FlexComponent',
      :'FlexImageAllOf'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `LINE::Client::MessagingApi::FlexImage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LINE::Client::MessagingApi::FlexImage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'flex')
        self.flex = attributes[:'flex']
      end

      if attributes.key?(:'margin')
        self.margin = attributes[:'margin']
      end

      if attributes.key?(:'position')
        self.position = attributes[:'position']
      end

      if attributes.key?(:'offset_top')
        self.offset_top = attributes[:'offset_top']
      end

      if attributes.key?(:'offset_bottom')
        self.offset_bottom = attributes[:'offset_bottom']
      end

      if attributes.key?(:'offset_start')
        self.offset_start = attributes[:'offset_start']
      end

      if attributes.key?(:'offset_end')
        self.offset_end = attributes[:'offset_end']
      end

      if attributes.key?(:'align')
        self.align = attributes[:'align']
      end

      if attributes.key?(:'gravity')
        self.gravity = attributes[:'gravity']
      end

      if attributes.key?(:'size')
        self.size = attributes[:'size']
      else
        self.size = 'md'
      end

      if attributes.key?(:'aspect_ratio')
        self.aspect_ratio = attributes[:'aspect_ratio']
      end

      if attributes.key?(:'aspect_mode')
        self.aspect_mode = attributes[:'aspect_mode']
      end

      if attributes.key?(:'background_color')
        self.background_color = attributes[:'background_color']
      end

      if attributes.key?(:'action')
        self.action = attributes[:'action']
      end

      if attributes.key?(:'animated')
        self.animated = attributes[:'animated']
      else
        self.animated = false
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @url.nil?
        invalid_properties.push('invalid value for "url", url cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @url.nil?
      position_validator = EnumAttributeValidator.new('String', ["relative", "absolute"])
      return false unless position_validator.valid?(@position)
      align_validator = EnumAttributeValidator.new('String', ["start", "end", "center"])
      return false unless align_validator.valid?(@align)
      gravity_validator = EnumAttributeValidator.new('String', ["top", "bottom", "center"])
      return false unless gravity_validator.valid?(@gravity)
      aspect_mode_validator = EnumAttributeValidator.new('String', ["fit", "cover"])
      return false unless aspect_mode_validator.valid?(@aspect_mode)
      true && super
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] position Object to be assigned
    def position=(position)
      validator = EnumAttributeValidator.new('String', ["relative", "absolute"])
      unless validator.valid?(position)
        fail ArgumentError, "invalid value for \"position\", must be one of #{validator.allowable_values}."
      end
      @position = position
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] align Object to be assigned
    def align=(align)
      validator = EnumAttributeValidator.new('String', ["start", "end", "center"])
      unless validator.valid?(align)
        fail ArgumentError, "invalid value for \"align\", must be one of #{validator.allowable_values}."
      end
      @align = align
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] gravity Object to be assigned
    def gravity=(gravity)
      validator = EnumAttributeValidator.new('String', ["top", "bottom", "center"])
      unless validator.valid?(gravity)
        fail ArgumentError, "invalid value for \"gravity\", must be one of #{validator.allowable_values}."
      end
      @gravity = gravity
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] aspect_mode Object to be assigned
    def aspect_mode=(aspect_mode)
      validator = EnumAttributeValidator.new('String', ["fit", "cover"])
      unless validator.valid?(aspect_mode)
        fail ArgumentError, "invalid value for \"aspect_mode\", must be one of #{validator.allowable_values}."
      end
      @aspect_mode = aspect_mode
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          url == o.url &&
          flex == o.flex &&
          margin == o.margin &&
          position == o.position &&
          offset_top == o.offset_top &&
          offset_bottom == o.offset_bottom &&
          offset_start == o.offset_start &&
          offset_end == o.offset_end &&
          align == o.align &&
          gravity == o.gravity &&
          size == o.size &&
          aspect_ratio == o.aspect_ratio &&
          aspect_mode == o.aspect_mode &&
          background_color == o.background_color &&
          action == o.action &&
          animated == o.animated && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [url, flex, margin, position, offset_top, offset_bottom, offset_start, offset_end, align, gravity, size, aspect_ratio, aspect_mode, background_color, action, animated].hash
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
      super(attributes)
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
      hash = super
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