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

  private

    def path_to_home_blocks
      'home/index/blocks'
    end
end
