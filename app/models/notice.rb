class Notice < ApplicationRecord
  enum types: { Generic: 0, Examination: 1 }
  validates_presence_of :notice_type, :content
end
