class Home < ApplicationRecord
  belongs_to :homeable, polymorphic: true
  has_many_attached :pictures
end
