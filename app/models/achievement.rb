# == Schema Information
#
# Table name: achievements
#
#  id            :bigint           not null, primary key
#  description   :string(255)
#  experience_id :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Achievement < ApplicationRecord
  belongs_to :experience
end
