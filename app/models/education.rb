# == Schema Information
#
# Table name: educations
#
#  id                 :bigint           not null, primary key
#  school             :string(255)
#  major              :string(255)
#  minor              :string(255)
#  gpa                :decimal(3, 2)
#  start_date         :date
#  end_date           :date
#  description        :text(65535)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  education_group_id :bigint           not null
#  location           :string(255)
#  level              :string(255)
#
class Education < ApplicationRecord
  LEVELS = ["High School", "Bachelor's Degree", "Master's Degree", "Doctorate"].freeze

  include Achievable

  belongs_to :education_group
  validates :level, inclusion: { in: LEVELS }
end
