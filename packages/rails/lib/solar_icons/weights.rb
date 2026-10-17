# frozen_string_literal: true

module SolarIcons
  # Canonical weight names accepted by solar_icon(weight:). The constants keep
  # the six styles discoverable from the editor and safe from typos.
  module Weights
    LINEAR = "linear"
    BROKEN = "broken"
    LINE_DUOTONE = "line-duotone"
    OUTLINE = "outline"
    BOLD = "bold"
    BOLD_DUOTONE = "bold-duotone"

    # Canonical order, as documented.
    ALL = [LINEAR, BROKEN, LINE_DUOTONE, OUTLINE, BOLD, BOLD_DUOTONE].freeze

    # Weights that render with strokes, where stroke_width applies.
    STROKE = [LINEAR, BROKEN, LINE_DUOTONE].freeze
  end
end
