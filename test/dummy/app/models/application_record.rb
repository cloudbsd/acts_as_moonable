class ApplicationRecord < ActiveRecord::Base
  include ActsAsMoonable::Humanable
  include ActsAsMoonable::Interval

  self.abstract_class = true
end
