class Sitter < ApplicationRecord
	belongs_to :user
	geocoded_by :address
	after_validation :geocode
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	do_not_validate_attachment_file_type :avatar
  	validates :name, :phone, :date_of_birth, :description, :address, presence:true
end
