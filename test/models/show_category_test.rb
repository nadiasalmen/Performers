require 'test_helper'

class ShowCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save show_category without name" do
    show_category = ShowCategory.new
    assert_not show_category.save, "Saved the show_category without a title"
  end
end
