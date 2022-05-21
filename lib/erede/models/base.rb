module Erede
  module Models
    class Base
      def initialize
        set_accessors_for_api_attributes
      end

      def set_accessors_for_api_attributes
        self.class.const_get(:API_ATTRIBUTES).each do |attr_name|
          define_singleton_method attr_name do
            instance_variable_get("@#{attr_name}")
          end

          define_singleton_method "#{attr_name}=" do |value|
            instance_variable_set("@#{attr_name}", value)
          end
        end
      end

      def to_json(*)
        Hash[
          self.class.const_get(:API_ATTRIBUTES).map { |attr_name| [attr_name, send(attr_name)] }
        ]
        .delete_if { |k, v| v.nil? }
        .to_json
      end
    end
  end
end
