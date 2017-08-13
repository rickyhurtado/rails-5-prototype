class HomeDatasource

  def initialize
  end

  def page_data
    @page_data ||= OpenStruct.new({
      first_block: first_block_datasource,
      second_block: second_block_datasource,
      third_block: third_block_datasource
    })
  end

  def rails_links
    @rails_links ||= [
      OpenStruct.new({ text: 'Ruby on Rails', url: 'http://rubyonrails.org/' }),
      OpenStruct.new({ text: 'RailsCasts', url: 'http://railscasts.com/' })
    ]
  end

  # Start fetching content from database in datasource
  # class instead in the controller class
  def first_block_datasource
    OpenStruct.new({
      title: 'First Block Container',
      description: 'This line is from <strong>HomeDatasource#first_block_datasource</strong>
      and rendered in the first block file.'.html_safe
    })
  end

  def second_block_datasource
    OpenStruct.new({
      title: 'Second Block Container'
    })
  end

  def third_block_datasource
    OpenStruct.new({
      title: 'Third Block Container'
    })
  end
end
