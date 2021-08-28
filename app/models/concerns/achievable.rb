module Achievable
  extend ActiveSupport::Concern

  included do
    has_many :achievements, as: :achievable, dependent: :destroy
  end
end
