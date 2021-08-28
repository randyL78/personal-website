# == Schema Information
#
# Table name: achievements
#
#  id              :bigint           not null, primary key
#  description     :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  achievable_type :string(255)
#  achievable_id   :bigint
#
class Achievement < ApplicationRecord
  belongs_to :achievable, polymorphic: true
end
