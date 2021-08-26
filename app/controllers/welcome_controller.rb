class WelcomeController < ApplicationController

  def index
    user = get_user
    profile = get_profile(user)
    @landing_info = OpenStruct.new(
      name: user.name,
      tag_line: user.title,
      profile: profile,
      experience: [
        OpenStruct.new(
          start_date: 'Sep 2018',
          end_date: 'Sep 2021',
          company: 'Treehouse',
          title: 'Web Developer III',
          location: 'Remote',
          description: "Worked as a Ruby on Rails developer for the main
                        application as well as filled in as a Data Engineer when
                        the team did not have one."
        ),
        OpenStruct.new(
          start_date: 'Sep 2018',
          end_date: 'Sep 2021',
          company: 'Treehouse',
          title: 'Web Developer III',
          location: 'Remote',
          description: "Worked as a Ruby on Rails developer for the main
                        application as well as filled in as a Data Engineer when
                        the team did not have one."
        ),
        OpenStruct.new(
          start_date: 'Sep 2018',
          end_date: 'Sep 2021',
          company: 'Treehouse',
          title: 'Web Developer III',
          location: 'Remote',
          description: "Worked as a Ruby on Rails developer for the main
                        application as well as filled in as a Data Engineer when
                        the team did not have one."
        )
      ],
      education: [
        OpenStruct.new(
          start_date: 'Sep 2018',
          end_date: 'Sep 2021',
          school: 'Old Dominion University',
          description: "In a combined Bachelor’s/Master’s Degree program where
                        I am able to work on both degrees at once.",
          gpa: 3.93
        ),
        OpenStruct.new(
          start_date: 'Sep 2018',
          end_date: 'Sep 2021',
          school: 'Old Dominion University',
          description: "In a combined Bachelor’s/Master’s Degree program where
                        I am able to work on both degrees at once.",
          gpa: 3.93
        ),
        OpenStruct.new(
          start_date: 'Sep 2018',
          end_date: 'Sep 2021',
          school: 'Old Dominion University',
          description: "In a combined Bachelor’s/Master’s Degree program where
                        I am able to work on both degrees at once.",
          gpa: 3.93
        )
      ],
      languages: [
        OpenStruct.new(
          name: "Ruby on Rails",
          rating: 4
        ),
        OpenStruct.new(
          name: "Ruby on Rails",
          rating: 4
        ),
        OpenStruct.new(
          name: "Ruby on Rails",
          rating: 4
        ),
        OpenStruct.new(
          name: "Ruby on Rails",
          rating: 4
        ),
        OpenStruct.new(
          name: "Ruby on Rails",
          rating: 4
        )
      ],
      development_tools: [
        OpenStruct.new(
          name: "Github",
          rating: 4
        ),
        OpenStruct.new(
          name: "Github",
          rating: 4
        ),
        OpenStruct.new(
          name: "Github",
          rating: 4
        ),
        OpenStruct.new(
          name: "Github",
          rating: 4
        ),
        OpenStruct.new(
          name: "Github",
          rating: 4
        )
      ],
      productivity: [
        OpenStruct.new(
          name: "Jira",
          rating: 4
        ),
        OpenStruct.new(
          name: "Jira",
          rating: 4
        ),
        OpenStruct.new(
          name: "Jira",
          rating: 4
        ),
        OpenStruct.new(
          name: "Jira",
          rating: 4
        ),
        OpenStruct.new(
          name: "Jira",
          rating: 4
        )
      ]
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
