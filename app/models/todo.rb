class Todo < ApplicationRecord
# Associations 
  # belongs_to :user
  acts_as_list
# Validations
  validates :title, presence: true
  validates_length_of :description, minimum: 5, maximum: 60, allow_blank: true

end
