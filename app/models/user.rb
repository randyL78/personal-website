# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  name            :string(255)
#  title           :string(255)
#  username        :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  has_secure_password

  has_many :profiles, dependent: :destroy
  has_many :experience_groups, through: :profiles
  has_many :education_groups, through: :profiles

  def current_profile
    profiles.published.first
  end
end
