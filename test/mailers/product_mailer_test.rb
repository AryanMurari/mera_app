require "test_helper"

class ProductMailerTest < ActionMailer::TestCase
  test "in_stock" do
    mail = ProductMailer.with(product: products(:tshirt), subscriber: subscribers(:david)).in_stock
    assert_equal "In stock", mail.subject
    assert_equal [ "ak5806@srmist.edu.in" ], mail.to
    assert_equal [ "1aryanmurari@gmail.com" ], mail.from
    assert_match "Good news!", mail.body.encoded
  end
end