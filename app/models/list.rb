class List < ActiveRecord::Base
  belongs_to :user
  has_many :likes, dependent: :destroy

  validates :username, presence: true
  validates :email, presence: true

end
