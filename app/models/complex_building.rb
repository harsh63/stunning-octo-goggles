class ComplexBuilding < ApplicationRecord
  has_one :home, as: :homeable, dependent: :destroy
  accepts_nested_attributes_for :home
end
