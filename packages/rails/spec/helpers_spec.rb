# frozen_string_literal: true

RSpec.describe SolarIcons::Helpers do
  subject(:helper) { Object.new.extend(described_class) }

  it "renders the linear icon at 24px by default" do
    svg = helper.solar_icon("arrow-right")
    expect(svg).to include('width="24"')
    expect(svg).to include('height="24"')
    expect(svg).to include("arrow-right")
    expect(svg).to be_html_safe
  end

  it "switches weight on request" do
    linear = helper.solar_icon("heart", weight: "linear")
    bold = helper.solar_icon("heart", weight: "bold")
    expect(bold).not_to eq(linear)
    expect(bold).to include('fill="currentColor"')
  end

  it "accepts underscored weight names" do
    dashed = helper.solar_icon("heart", weight: "bold_duotone")
    spaced = helper.solar_icon("heart", weight: "bold-duotone")
    expect(dashed).to eq(spaced)
  end

  it "applies an explicit size" do
    svg = helper.solar_icon("arrow-right", size: 32)
    expect(svg).to include('width="32"')
    expect(svg).to include('height="32"')
  end

  it "lets explicit dimensions win over size" do
    svg = helper.solar_icon("arrow-right", size: 32, width: 16)
    expect(svg).to include('width="16"')
    expect(svg).to include('height="32"')
  end

  it "merges default and explicit classes" do
    SolarIcons.configure { |config| config.default_attrs = { class: "icon" } }
    svg = helper.solar_icon("arrow-right", class: "large")
    expect(svg).to include('class="solar solar-arrow-right-linear icon large"')
  end

  it "overrides stroke width on stroke styles" do
    svg = helper.solar_icon("arrow-right", weight: "linear", stroke_width: 2)
    expect(svg).to include('stroke-width="2"')
  end

  it "ignores stroke width on fill styles" do
    svg = helper.solar_icon("heart", weight: "bold", stroke_width: 2)
    expect(svg).not_to include('stroke-width="2"')
  end

  it "drives the duotone secondary color and opacity through CSS variables" do
    svg = helper.solar_icon(
      "heart",
      weight: "bold-duotone",
      secondary_color: "#2563eb",
      secondary_opacity: 0.4
    )
    expect(svg).to include("--solar-secondary-color: #2563eb")
    expect(svg).to include("--solar-secondary-opacity: 0.4")
  end

  it "merges duotone variables into an existing inline style" do
    svg = helper.solar_icon(
      "heart",
      weight: "line-duotone",
      secondary_color: "#fff",
      style: "display: block"
    )
    expect(svg).to include("display: block")
    expect(svg).to include("--solar-secondary-color: #fff")
  end

  it "passes inline style through as an SVG attribute" do
    svg = helper.solar_icon("arrow-right", style: "vertical-align: middle")
    expect(svg).to include('style="vertical-align: middle"')
  end

  it "hides decorative icons from assistive tech by default" do
    expect(helper.solar_icon("arrow-right")).to include('aria-hidden="true"')
  end

  it "lets explicit accessibility attributes win" do
    svg = helper.solar_icon("arrow-right", "aria-label" => "Next", "aria-hidden" => "false")
    expect(svg).to include('aria-hidden="false"')
    expect(svg).to include('aria-label="Next"')
  end

  it "drops aria-hidden when an aria-label is supplied" do
    svg = helper.solar_icon("arrow-right", "aria-label" => "Next")
    expect(svg).to include('aria-label="Next"')
    expect(svg).not_to include("aria-hidden")
  end

  it "renders alt as a titled image and drops aria-hidden" do
    svg = helper.solar_icon("heart", alt: "Add to favourites")
    expect(svg).to include("<title>Add to favourites</title>")
    expect(svg).not_to include("aria-hidden")
  end

  it "escapes hostile attribute values" do
    svg = helper.solar_icon("arrow-right", class: 'x" onload="evil()"')
    expect(svg).to include("x&quot; onload=&quot;evil()&quot;")
    expect(svg).not_to include('onload="evil()"')
  end

  it "escapes hostile alt text" do
    svg = helper.solar_icon("heart", alt: "<script>x</script>")
    expect(svg).to include("<title>&lt;script&gt;x&lt;/script&gt;</title>")
  end

  it "rejects unknown icons" do
    expect { helper.solar_icon("no-such-icon") }.to raise_error(SolarIcons::Helpers::UnknownIcon)
  end

  it "rejects unknown weights" do
    expect { helper.solar_icon("heart", weight: "3d") }.to raise_error(SolarIcons::Helpers::UnknownStyle)
  end
end
