class User < ApplicationRecord
  has_one :client, dependent: :destroy
  has_one :sitter, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lastseenable
  validates :role, presence:true
end


