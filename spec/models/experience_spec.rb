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
require 'rails_helper'

RSpec.describe Experience, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
