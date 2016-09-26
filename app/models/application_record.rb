class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  validate :credit_card_api_access, :on => :create
end
