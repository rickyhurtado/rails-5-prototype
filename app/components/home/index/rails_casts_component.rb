class Home::Index::RailsCastsComponent < Utilities::LinkButtonComponent
  def text
    'Visit RailsCasts Site'
  end

  def link
    'http://railscasts.com/'
  end

  def target
    '_blank'
  end
end
