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
require 'rails_helper'

RSpec.describe Achievement, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
