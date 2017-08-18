class Javascript::IndexController < ApplicationController
  def page
    render locals: {
      page: javascript_index_page
    }
  end

  private

    def javascript_index_page
      JavascriptPage.new
    end
end
