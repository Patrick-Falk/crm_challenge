class Customer < ApplicationRecord
  validates :full_name, :image, presence: true
  # validates :email_address, uniqueness:true

  belongs_to :Province
end
