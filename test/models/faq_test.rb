require 'test_helper'

class FaqTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save faq without question" do
    faq = Faq.new
    assert_not faq.save, "Saved the faq without a question"
  end
end
