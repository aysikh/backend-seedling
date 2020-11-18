class DailyEntry < ApplicationRecord
  belongs_to :prompt
  belongs_to :user
  has_many :mood_entries
  has_many :moods, through: :mood_entries
  has_many :activity_entries
  has_many :activities, through: :activity_entries
end
