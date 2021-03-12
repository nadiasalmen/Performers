require 'test_helper'

class EnquiryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save enquiry without question" do
    enquiry = Enquiry.new
    assert_not enquiry.save, "Saved the enquiry without a question"
  end
end
