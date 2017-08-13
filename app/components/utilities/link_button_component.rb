class Utilities::LinkButtonComponent

  attr_accessor :text, :link, :target

  def initialize
    @text = ''
    @link = ''
    @target = '_self'
  end

  def component_path
    'components/utilities/link_button'
  end
end
