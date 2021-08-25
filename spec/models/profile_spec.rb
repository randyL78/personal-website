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
require 'rails_helper'

RSpec.describe Profile, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
