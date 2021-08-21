# == Schema Information
#
# Table name: educations
#
#  id          :bigint           not null, primary key
#  name        :string(255)
#  major       :string(255)
#  minor       :string(255)
#  gpa         :decimal(3, 2)
#  start_date  :date
#  end_date    :date
#  description :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Education < ApplicationRecord
  
end
