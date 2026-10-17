# frozen_string_literal: true

require "active_support/core_ext/string/output_safety"
require "erb"
require "solar_icons/weights"

module SolarIcons
  module Helpers
    STYLES = Weights::ALL
    STROKE_STYLES = Weights::STROKE
    A11Y_ATTRIBUTES = %w[aria-label aria-labelledby role title].freeze

    class UnknownIcon < ArgumentError; end
    class UnknownStyle < ArgumentError; end

    # Inline a Solar icon as an SVG string, e.g.
    #   solar_icon("arrow-right")
    #   solar_icon("heart", weight: "bold-duotone", size: 32, class: "icon")
    #   solar_icon("heart", weight: "line-duotone", secondary_color: "#2563eb")
    #   solar_icon("heart", alt: "Add to favourites")
    def solar_icon(name, weight: nil, size: nil, stroke_width: nil,
                   secondary_color: nil, secondary_opacity: nil, alt: nil, **attrs)
      weight = (weight || SolarIcons.configuration.default_weight).to_s.tr("_", "-")
      raise UnknownStyle, "Unknown Solar icon weight: #{weight}" unless STYLES.include?(weight)

      path = File.join(SolarIcons.icons_root, weight, "#{name}.svg")
      raise UnknownIcon, "Unknown Solar icon: #{name}" unless File.file?(path)

      svg = File.read(path)
      svg = with_size(svg, size, attrs)
      svg = with_attrs(svg, attrs, alt: alt)
      svg = with_stroke_width(svg, stroke_width, weight) unless stroke_width.nil?
      svg = with_secondary(svg, secondary_color, secondary_opacity)
      svg = with_title(svg, alt) unless alt.to_s.empty?
      svg.html_safe
    end

    private

    def with_size(svg, size, attrs)
      size ||= SolarIcons.configuration.default_size
      width = attrs.delete(:width) || attrs.delete("width") || size
      height = attrs.delete(:height) || attrs.delete("height") || size
      svg.sub(/<svg([^>]*)>/) do
        tag = Regexp.last_match(1).gsub(/ (width|height)="[^"]*"/, "")
        %(<svg#{tag} width="#{ERB::Util.html_escape(width.to_s)}" height="#{ERB::Util.html_escape(height.to_s)}">)
      end
    end

    def with_attrs(svg, attrs, alt: nil)
      existing_class = svg[/<svg[^>]* class="([^"]*)"/, 1]
      explicit_class = attrs.delete(:class) || attrs.delete("class")
      default_class = SolarIcons.configuration.default_attrs[:class] ||
        SolarIcons.configuration.default_attrs["class"]
      merged_class = [existing_class, default_class, explicit_class].compact.join(" ").strip

      merged = {}
      SolarIcons.configuration.default_attrs.each { |key, value| merged[key.to_s] = value }
      attrs.each { |key, value| merged[key.to_s] = value }
      merged.delete("class")
      merged["class"] = merged_class unless merged_class.empty?

      # Decorative by default: only hide when the caller supplied no accessible
      # label. Mirrors the JS packages, where aria-label, title, or alt win.
      merged["aria-hidden"] = "true" if !accessible?(merged, alt) && !merged.key?("aria-hidden")

      merged.each do |key, value|
        escaped = ERB::Util.html_escape(value.to_s)
        pattern = / #{Regexp.escape(key)}="[^"]*"/
        svg = svg.sub(/<svg([^>]*)>/) do
          attrs_before = Regexp.last_match(1).gsub(pattern, "")
          %(<svg#{attrs_before} #{key}="#{escaped}">)
        end
      end
      svg
    end

    def accessible?(attrs, alt)
      return true unless alt.to_s.empty?

      A11Y_ATTRIBUTES.any? { |key| attrs.key?(key) }
    end

    def with_stroke_width(svg, stroke_width, weight)
      return svg unless STROKE_STYLES.include?(weight)

      svg.sub(/stroke-width="[^"]*"/, %(stroke-width="#{stroke_width}"))
    end

    def with_secondary(svg, secondary_color, secondary_opacity)
      declarations = []
      declarations << "--solar-secondary-color: #{secondary_color}" unless secondary_color.nil?
      declarations << "--solar-secondary-opacity: #{secondary_opacity}" unless secondary_opacity.nil?
      return svg if declarations.empty?

      add_inline_style(svg, declarations.join("; "))
    end

    def add_inline_style(svg, declarations)
      svg.sub(/<svg([^>]*)>/) do
        tag = Regexp.last_match(1)
        merged = if tag =~ / style="([^"]*)"/
                   [Regexp.last_match(1), declarations].reject(&:empty?).join("; ")
                 else
                   declarations
                 end
        %(<svg#{tag.sub(/ style="[^"]*"/, "")} style="#{ERB::Util.html_escape(merged)}">)
      end
    end

    def with_title(svg, alt)
      title = "<title>#{ERB::Util.html_escape(alt.to_s)}</title>"
      svg.sub(/<svg[^>]*>/) { |tag| "#{tag}#{title}" }
    end
  end
end
