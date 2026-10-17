# frozen_string_literal: true

require "rbconfig"

RSpec.describe "lookup constants" do
  subject(:helper) { Object.new.extend(SolarIcons::Helpers) }

  it "autoloads the icon constants on first use" do
    script = <<~RUBY
      require "solar_icons"
      abort "NOT_AUTOLOADED" unless SolarIcons.autoload?(:Icons) == "solar_icons/icons"
      abort "WRONG_VALUE" unless SolarIcons::Icons::ARROW_UP == "arrow-up"
    RUBY
    lib = File.expand_path("../lib", __dir__)
    expect(system(RbConfig.ruby, "-I", lib, "-e", script)).to be(true)
  end

  it "covers the catalogue exactly" do
    values = SolarIcons::Icons.constants.map { |name| SolarIcons::Icons.const_get(name) }
    expect(values.sort).to eq(SolarIcons.icon_names("linear"))
  end

  it "exposes frozen strings" do
    expect(SolarIcons::Icons::ARROW_UP).to be_frozen
  end

  it "keeps keyword-like names valid" do
    expect(SolarIcons::Icons::CASE).to eq("case")
  end

  it "feeds the helper like a plain string" do
    expect(helper.solar_icon(SolarIcons::Icons::ARROW_UP)).to eq(helper.solar_icon("arrow-up"))
    expect(helper.solar_icon(SolarIcons::Icons::ARROW_UP, weight: SolarIcons::Weights::BOLD_DUOTONE))
      .to eq(helper.solar_icon("arrow-up", weight: "bold-duotone"))
  end

  describe SolarIcons::Weights do
    it "matches the helper whitelist" do
      expect(described_class::ALL).to eq(SolarIcons::Helpers::STYLES)
    end

    it "renders every weight through its constant" do
      described_class::ALL.each do |weight|
        expect(helper.solar_icon("heart", weight: weight)).to include("<svg")
      end
    end

    it "exposes the canonical values" do
      expect(described_class::BOLD_DUOTONE).to eq("bold-duotone")
      expect(described_class::STROKE).to eq(%w[linear broken line-duotone])
    end
  end
end
