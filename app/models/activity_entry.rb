class ActivityEntry < ApplicationRecord
  belongs_to :activity
  belongs_to :daily_entry
end
