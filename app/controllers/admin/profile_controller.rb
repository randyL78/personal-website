module Admin
  class ProfileController < AdminController
    before_action :authorize
  end
end
