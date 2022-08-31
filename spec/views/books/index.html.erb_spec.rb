require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        user: nil,
        name: "Name",
        author: "Author"
      ),
      Book.create!(
        user: nil,
        name: "Name",
        author: "Author"
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Author".to_s, count: 2
  end
end
