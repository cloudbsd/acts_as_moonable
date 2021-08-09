module ActsAsMoonable
module Humanable
  extend ActiveSupport::Concern

  module ClassMethods
    def i18n_attribute_name attr
      self.human_attribute_name attr
    end

    def human_action_name action
      I18n.t("layouts.action.#{action}", model: self.model_name.human)
    end

    def human_enum_name(enum_name, enum_value)
    # I18n.t("activerecord.attributes.#{self.model_name.i18n_key}.#{enum_name.to_s.pluralize}.#{enum_value}")
      self.human_attribute_name "#{enum_name}.#{enum_value}"
    end

    def human_enum_choices enum_name
      enum_hash = self.public_send enum_name.to_s.pluralize
      enum_hash.keys.map { |enum_value| [ self.human_enum_name(enum_name, enum_value), enum_value ] }
    end

    def human_array_choices enum_name
      array_values = self.const_get enum_name.upcase
      array_values.map { |enum_value| [ self.human_enum_name(enum_name, enum_value), enum_value ] }
    end
  end

  def i18n_attribute_name attr
    self.class.human_attribute_name attr
  end

  def human_enum_name enum_name
    enum_value = self.public_send enum_name
    self.class.human_enum_name enum_name, enum_value
  end
end
end
