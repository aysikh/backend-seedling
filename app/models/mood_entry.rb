class MoodEntry < ApplicationRecord
  belongs_to :mood
  belongs_to :daily_entry
end
