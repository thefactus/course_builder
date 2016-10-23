class Content < ApplicationRecord
  validates_presence_of :title

  validates_length_of :title, maximum: 255

  belongs_to :chapter
end
