class Option < ApplicationRecord
  belongs_to :question

  validates :name, presence: true
  validates :position, presence: true
end
