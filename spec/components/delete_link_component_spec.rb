# frozen_string_literal: true

require "rails_helper"

RSpec.describe DeleteLinkComponent, type: :component do
  it "renders delete link" do
    test_url = "https://example.com"
    test_text = "player"

    render_inline(described_class.new(href: test_url, text: test_text))

    expect(rendered_content).to have_link "Delete #{test_text}", href: test_url
  end
end
