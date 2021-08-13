class Movie < ApplicationRecord
  has_many :bookmarks
  # has_many :lists, through: :bookmarks

  validates :title, uniqueness: true
  validates :title, presence: true
  validates :overview, presence: true

  # dependent: :restrict_with_error
end
