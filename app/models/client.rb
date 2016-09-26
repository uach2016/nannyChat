class Client < ApplicationRecord
	belongs_to :user
	geocoded_by :address
	after_validation :geocode
	validates :name, :address, presence:true
end
