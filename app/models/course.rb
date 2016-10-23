class Course < ApplicationRecord
  validates_presence_of :name, :subtitle, :description,
                        :price, :duration

  validates_numericality_of :price, :duration, greater_than: 0

  validates_length_of :name, :subtitle, maximum: 255

  has_many :chapters
end
