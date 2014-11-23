require 'test_helper'

class TagsCellTest < Cell::TestCase
  test "show" do
    invoke :show
    assert_select 'p'
  end


end
