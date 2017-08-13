class HomeController < ApplicationController
  def index
    render locals: {
      page: HomePage.new(datasource.page_data),
      ruby_on_rails: ruby_on_rails,
      rails_casts: rails_casts,
      rails_links: rails_links
    }
  end

  private

    def datasource
      @datasource ||= HomeDatasource.new
    end

    def ruby_on_rails
      Home::Index::RubyOnRailsOrgComponent.new
    end

    def rails_casts
      Home::Index::RailsCastsComponent.new
    end

    def rails_links
      Home::Index::RailsLinksComponent.new datasource.rails_links
    end
end
