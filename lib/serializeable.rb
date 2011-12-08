module AttributeSerializer

  module ActiveRecordExtensions

    module ClassMethods

      def serializeable(serialized, serialized_accessors={})  
        serialize serialized, serialized_accessors.class

        serialized_attr_accessor serialized, serialized_accessors
        default_serialized_attr serialized,  serialized_accessors
      end

      # Creates the accessors
      def serialized_attr_accessor(serialized, accessors)
        accessors.keys.each do |k|
          define_method("#{k}") do
            self[serialized] && self[serialized][k]
          end

          define_method("#{k}=") do |value|
            self[serialized][k] = value
          end
        end
      end

      # Sets the default value of the serialized field
      def default_serialized_attr(serialized, accessors)
        method_name =  "set_default_#{serialized}"
        after_initialize method_name 

        define_method(method_name) do
          self[serialized] = accessors if self[serialized].nil?
        end
      end

    end

  end

end

String.class_eval do
  
  def format_twitter
    "@#{self.gsub(/@/, '')}"
  end
  
  def format_phone
    "#{self[0..2]}-#{self[3..5]}-#{self[6..9]}"
  end
  def is_checked?
    self == "on"
  end
  
  def checkbox_class
    (self == "on") ? "active" : ""
  end
end

class ActiveRecord::Base
  extend AttributeSerializer::ActiveRecordExtensions::ClassMethods
end
