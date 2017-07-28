class HomePage < Page
  # Something to start for creating partial files
  # as blocks for each sections of the home page
  def first_block_path
    "#{path_to_home_blocks}/first_block"
  end

  def second_block_path
    "#{path_to_home_blocks}/second_block"
  end

  def third_block_path
    "#{path_to_home_blocks}/third_block"
  end

  def data
    datasource
  end

  private

    def path_to_home_blocks
      'home/index/blocks'
    end

    # Datasource shall be available later in ./app/datasources folder
    def datasource
      @datasource ||= OpenStruct.new({
        first_block: first_block_datasource,
        second_block: second_block_datasource,
        third_block: third_block_datasource
      })
    end

    def first_block_datasource
      OpenStruct.new({
        title: 'First Block Container'
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
