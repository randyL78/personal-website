class WelcomeController < ApplicationController
  def index
    user = get_user
    profile = get_profile(user)
    @landing_info = OpenStruct.new(
      name: user.name,
      tag_line: user.title,
      profile: profile,
      experience: profile.experience_group,
      education: profile.education_group,
      # languages: [
      #   OpenStruct.new(
      #     name: "Ruby on Rails",
      #     rating: 4
      #   ),
      #   OpenStruct.new(
      #     name: "Ruby on Rails",
      #     rating: 4
      #   ),
      #   OpenStruct.new(
      #     name: "Ruby on Rails",
      #     rating: 4
      #   ),
      #   OpenStruct.new(
      #     name: "Ruby on Rails",
      #     rating: 4
      #   ),
      #   OpenStruct.new(
      #     name: "Ruby on Rails",
      #     rating: 4
      #   )
      # ],
      # development_tools: [
      #   OpenStruct.new(
      #     name: "Github",
      #     rating: 4
      #   ),
      #   OpenStruct.new(
      #     name: "Github",
      #     rating: 4
      #   ),
      #   OpenStruct.new(
      #     name: "Github",
      #     rating: 4
      #   ),
      #   OpenStruct.new(
      #     name: "Github",
      #     rating: 4
      #   ),
      #   OpenStruct.new(
      #     name: "Github",
      #     rating: 4
      #   )
      # ],
      # productivity: [
      #   OpenStruct.new(
      #     name: "Jira",
      #     rating: 4
      #   ),
      #   OpenStruct.new(
      #     name: "Jira",
      #     rating: 4
      #   ),
      #   OpenStruct.new(
      #     name: "Jira",
      #     rating: 4
      #   ),
      #   OpenStruct.new(
      #     name: "Jira",
      #     rating: 4
      #   ),
      #   OpenStruct.new(
      #     name: "Jira",
      #     rating: 4
      #   )
      # ]
    )
  end

  private def get_user
    user = User.first
    return user if user.present?

    redirect_to admin_root_path
  end

  private def get_profile(user)
    profile = user.current_profile
    return profile if profile.present?

    redirect_to admin_root_path
  end
end
