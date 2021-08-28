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

  has_one :experience_group, dependent: :destroy
  has_one :education_group, dependent: :destroy

  has_many :experiences, through: :experience_group
  has_many :educations, through: :education_group

  validates :user_id, presence: true
  validates :name, presence: true
  validates :age, numericality: { only_integer: true }

  scope :published, -> { where(is_published: true) }
  scope :for_user, ->(user_id) { where(user_id: user_id) }

  alias_attribute :published?, :is_published
end
