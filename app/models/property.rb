class Property < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_many :residents, dependent: :destroy

end
