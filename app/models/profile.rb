# == Schema Information
#
# Table name: profiles
#
#  id           :bigint           not null, primary key
#  name         :string(255)
#  location     :string(255)
#  about_me     :text(65535)
#  age          :integer
#  quote        :string(255)
#  quote_author :string(255)
#  is_published :boolean
#  user_id      :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Profile < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :name, presence: true
  validates :age, numericality: { only_integer: true }
end
