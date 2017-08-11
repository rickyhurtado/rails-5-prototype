class HomeController < ApplicationController
  def index
    render locals: {
      page: HomePage.new(datasource.page_data),
      ruby_on_rails: ruby_on_rails
    }
  end

  private

    def datasource
      @datasource ||= HomeDatasource.new
    end

    def ruby_on_rails
      Home::Index::RubyOnRailsOrgComponent.new
    end
end
