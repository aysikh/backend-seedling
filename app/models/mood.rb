class Mood < ApplicationRecord
  has_many :mood_entries
  has_many :daily_entries, through: :mood_entries
end
