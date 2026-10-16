# frozen_string_literal: true

RSpec.describe SolarIcons do
  describe ".icon_names" do
    it "lists every canonical icon of a style" do
      expect(described_class.icon_names("linear").size).to eq(1451)
    end

    it "covers every style with the same catalogue" do
      counts = %w[linear broken line-duotone outline bold bold-duotone].map do |style|
        described_class.icon_names(style).size
      end
      expect(counts.uniq).to eq([1451])
    end
  end
end
