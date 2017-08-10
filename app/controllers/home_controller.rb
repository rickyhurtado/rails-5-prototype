class HomeController < ApplicationController
  def index
    render locals: {
      page: HomePage.new(datasource.page_data)
    }
  end

  private

    def datasource
      @datasource ||= HomeDatasource.new
    end
end
