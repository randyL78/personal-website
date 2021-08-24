class WelcomeController < ApplicationController
  def index
    @landing_info = OpenStruct.new(
      profile: OpenStruct.new(
        quote: 'Good software, like wine, takes time.',
        quote_author: 'Joel Spolsky',
        name: 'Randy Layne',
        tag_line: 'Software Developer',
        about_me: "I'm a Ruby on Rails developer with an insatiable thirst for
                    learning more about software development, including other
                    languages.",
        age: 43,
        location: 'Lynchburg, VA. USA'
      ),
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
end
