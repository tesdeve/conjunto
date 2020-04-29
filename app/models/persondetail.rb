class Persondetail < ApplicationRecord
  belongs_to :personable, polymorphic: true
end
