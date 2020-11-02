class User < ApplicationRecord
  has_many :owners, class_name: "User", foreign_key: "owner_id"
  belongs_to :vet, class_name: "User"

  has_secure_password

  validates :username, :email, presence: true, uniqueness: true
  validates :name, presence: true
  
  validates_length_of :password, minimum: 8, if: Proc.new { | user | user.password.present? }
end
