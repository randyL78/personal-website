# == Schema Information
#
# Table name: experience_groups
#
#  id           :bigint           not null, primary key
#  quote        :string(255)
#  quote_author :string(255)
#  profile_id   :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class ExperienceGroup < ApplicationRecord
  belongs_to :profile
  has_many :experiences, dependent: :destroy

  validates :profile_id, presence: true, uniqueness: true

  scope :for_profile, ->(profile_id) { where(profile_id: profile_id) }
end
