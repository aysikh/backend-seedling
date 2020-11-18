class Activity < ApplicationRecord
  has_many :activity_entries
  has_many :daily_entries, through: :activity_entries
end
