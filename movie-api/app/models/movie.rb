class Movie < ApplicationRecord
  validates :title, presence: true, length: { minimum: 1, maximum: 50 }
  validates :format, allow_nil: true, inclusion: %w[VHS DVD Streaming]
  validates :length,
            allow_nil: true,
            numericality: { only_integer: true, greater_than: 0, less_than: 500 }
  validates :release_year,
            allow_nil: true,
            numericality: { only_integer: true, greater_than: 1800, less_than: 2100 }
  validates :rating,
            allow_nil: true,
            numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end