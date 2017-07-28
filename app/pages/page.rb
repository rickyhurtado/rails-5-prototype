class Page
  attr_reader :params,   # Optional. Pass the POST or URL parameters
              :title,    # Also used in HTML title tag
              :subtitle, # Also used in HTML meta description
              :id,       # HTML id attribute to be used for Vanilla JS reference
              :js_path   # JS for specific page only

  def initialize params={}
    @params = params
    @title = options.fetch :title, options[:title]
    @subtitle = options.fetch :subtitle, options[:subtitle]
    @id = options.fetch :id, ''
    @js_path = options.fetch :js_path, ''
  end

  private

    def datasource
      Object
    end

    # Override through inheritance
    def options
      {
        title: 'Rails 5 Prototype',
        subtitle: 'Yet another Rails component-based application'
      }
    end
end
