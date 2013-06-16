require "active_record"

module Cleanliness
  module ValidatesCleanliness
    module Validator
      class CleanlinessValidator < ActiveModel::EachValidator
        def validate_each(record, attribute, value)
          record[attribute] = value.clean if !!(value)
        end
      end
    end

    module ClassMethods
      def validates_cleanliness_of(*attr_names)
        validates_with ActiveRecord::Base::ExistenceValidator, _merge_attributes(attr_names)
      end
    end
  end
end

ActiveRecord::Base.send(:include, Cleanliness::ValidatesCleanliness::Validator)
ActiveRecord::Base.send(:extend, Cleanliness::ValidatesCleanliness::ClassMethods)

String.class_eval do
  def clean
    Cleanliness::Dictionary.translate(self)
  end
end