class WelcomeController < ApplicationController
  def index
    @landing_info = OpenStruct.new(
      tag_line: 'Software Developer',
      profile: OpenStruct.new(
        quote: 'Good software, like wine, takes time.',
        quote_author: 'Joel Spolsky',
        name: 'Randy Layne',
        about_me: "I'm a Ruby on Rails developer with an insatiable thirst for
                    learning more about software development, including other
                    languages.",
        age: 43,
        location: 'Lynchburg, VA. USA'
      )
    )
  end
end
