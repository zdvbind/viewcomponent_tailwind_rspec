# frozen_string_literal: true

require "rails_helper"

RSpec.describe LinkComponent, type: :component do
  it "renders something useful" do
    test_text = "Some content"
    render_inline(described_class.new.with_content(test_text))

    expect(rendered_content).to have_text(test_text)
  end
end
