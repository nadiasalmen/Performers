require 'test_helper'

class GenreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save genre without name" do
    genre = Genre.new
    assert_not genre.save, "Saved the genre without a name"
  end
end
