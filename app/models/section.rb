class Section < ApplicationRecord
  belongs_to :song, optional: true
  has_many :progressions
end
