# == Schema Information
#
# Table name: experiences
#
#  id                  :bigint           not null, primary key
#  start_date          :date
#  end_date            :date
#  company             :string(255)
#  title               :string(255)
#  location            :string(255)
#  description         :text(65535)
#  experience_group_id :bigint           not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
class Experience < ApplicationRecord
  belongs_to :experience_group
  has_many :achievements, dependent: :destroy
end
