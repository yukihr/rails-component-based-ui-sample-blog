class TagsCell < Cell::ViewModel
  def show
    render.html_safe
  end

  private

  def tags
    Tag.all
  end
end
