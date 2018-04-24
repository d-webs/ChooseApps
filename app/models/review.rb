class Review < ApplicationRecord
  validates_presence_of :rating
  belongs_to :user
  belongs_to :application
end
