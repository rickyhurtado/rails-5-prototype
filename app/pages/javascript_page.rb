class JavascriptPage < Page
  def description_path
    "#{path_to_javascript_blocks}/description"
  end

  private

    def path_to_javascript_blocks
      'javascript/index/blocks'
    end

    def options
      {
        title: 'Hybrid JavaScript',
        subtitle: 'Vanilla JavaScript + jQuery'
      }
    end
end
