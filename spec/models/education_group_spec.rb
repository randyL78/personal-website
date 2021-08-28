# == Schema Information
#
# Table name: education_groups
#
#  id           :bigint           not null, primary key
#  quote        :string(255)
#  quote_author :string(255)
#  profile_id   :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require 'rails_helper'

RSpec.describe EducationGroup, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
