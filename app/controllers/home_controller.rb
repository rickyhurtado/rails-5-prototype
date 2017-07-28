class HomeController < ApplicationController
  def index
    render locals: {
      page: HomePage.new
    }
  end
end
