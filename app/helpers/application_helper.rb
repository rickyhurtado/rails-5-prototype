module ApplicationHelper
  def set_html_title title
    "#{set_title title}Rails 5 Prototype"
  end

  def set_title title
    "#{title} | " if title.present?
  end
end
