class Industry < ApplicationRecord
  validates_presence_of :name
  has_and_belongs_to_many :applications
end
