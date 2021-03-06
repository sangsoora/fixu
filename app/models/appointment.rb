class Appointment < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :fixer, optional: true
  belongs_to :user, optional: true
  belongs_to :problem

  has_many_attached :photos
  has_many :messages, dependent: :destroy
  has_many :reviews, dependent: :destroy

  monetize :amount_cents

end
