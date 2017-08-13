class Home::Index::RailsLinksComponent

  attr_reader :data

  def initialize datasource
    @data = datasource
  end

  def link_buttons
    data.map do |link|
      link_button = Utilities::LinkButtonComponent.new
      link_button.text = "Visit #{link.text} Site"
      link_button.link = link.url
      link_button.target = '_blank'
      link_button
    end
  end
end
