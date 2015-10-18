class LandioItem < ActiveRecord::Base
  validates :description, presence: true
end
