# frozen_string_literal: true

class GalleryController < ApplicationController
  STYLES = %w[linear broken line-duotone outline bold bold-duotone].freeze
  STROKE_STYLES = %w[linear broken line-duotone].freeze
  DUOTONE_STYLES = %w[line-duotone bold-duotone].freeze
  DEFAULT_COLOR = "#f2f3f7"

  def index
    @style = params[:style].to_s
    @style = "linear" unless STYLES.include?(@style)
    @size = (params[:size] || 28).to_i.clamp(16, 64)
    @color = sanitize_color(params[:color_text].presence || params[:color].presence) || DEFAULT_COLOR
    @secondary_color = sanitize_color(params[:secondary_color].presence) || @color
    @secondary_opacity = (params[:secondary_opacity] || 50).to_i.clamp(5, 100)
    @stroke = (params[:stroke] || 1.5).to_f.clamp(0.5, 4.0)
    @stroke_enabled = STROKE_STYLES.include?(@style)
    @duotone = DUOTONE_STYLES.include?(@style)
    @q = params[:q].to_s.strip.downcase
    @icons = SolarIcons.icon_names(@style)
    @icons = @icons.select { |name| name.include?(@q) } if @q.present?
  end

  # Dynamic style data: the client fetches a style once, then switches
  # without any server reload.
  def icons
    style = params[:style].to_s
    style = "linear" unless STYLES.include?(style)
    render json: SolarIcons.icon_names(style).to_h { |name| [name, helpers.solar_icon(name, weight: style)] }
  end

  private

  def sanitize_color(value)
    return nil unless value.is_a?(String)
    return value if value.match?(/\A#(?:[0-9a-f]{3}|[0-9a-f]{6})\z/i)
    return value if value.match?(/\A[a-z]+\z/i)

    nil
  end
end
