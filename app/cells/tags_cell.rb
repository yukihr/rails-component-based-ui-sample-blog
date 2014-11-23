class TagsCell < Cell::ViewModel
  def show
    render
  end

  private

  def tags
    Tag.all
  end
end
