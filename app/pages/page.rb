class Page
  attr_reader :data,     # Optional. Content from database
              :params,   # Optional. Pass the POST or URL parameters
              :title,    # Also used in HTML title tag
              :subtitle, # Also used in HTML meta description
              :id,       # HTML id attribute to be used for Vanilla JS reference
              :js_path   # JS for specific page only

  def initialize datasource=Object, params={}
    @data = datasource
    @params = params
    @title = options.fetch :title, ''
    @subtitle = options.fetch :subtitle, ''
    @id = options.fetch :id, ''
    @js_path = options.fetch :js_path, ''
  end

  private

    # Override through inheritance
    def options
      {
        title: 'Home',
        subtitle: 'Yet another Rails component-based application',
        id: 'home-page',
        js_path: 'home'
      }
    end
end
