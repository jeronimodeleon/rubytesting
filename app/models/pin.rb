class Pin < ActiveRecord::Base
  attr_accessible :description, :image
  has_attached_file :image, styles: { medium: "240x240" }
  validates :description, presence: true
  belongs_to :user
  validates :user_id, presence: true
end
