# solar_icons

Solar Icons for Ruby on Rails views: inline any of the 1,451 icons in six styles with the `solar_icon` helper. SVGs ship inside the gem, generated from `@solar-icons/static`, so views render with no network and no JavaScript.

```erb
<%= solar_icon("arrow-right") %>
<%= solar_icon("heart", weight: "bold-duotone", size: 32, class: "icon") %>
```

## Install

```ruby
# Gemfile
gem "solar_icons"
```

```sh
bundle install
```

The helper is available in all views automatically through the Rails railtie. Outside Rails, include `SolarIcons::Helpers` yourself.

## Usage

```erb
<%= solar_icon("arrow-right") %>
<%= solar_icon("arrow-right", weight: "linear") %>
<%= solar_icon("heart", weight: "bold") %>
<%= solar_icon("house", weight: "line-duotone", stroke_width: 2) %>
```

Options:

- `weight:` one of `linear` (default), `broken`, `line-duotone`, `outline`, `bold`, `bold-duotone`. Underscores are accepted (`bold_duotone`).
- `size:` sets `width` and `height` together. Explicit `width:`/`height:` win over `size:`.
- `stroke_width:` overrides the stroke on Linear, Broken, and Line Duotone icons. Ignored by fill styles.
- `secondary_color:` and `secondary_opacity:` (0 to 1) style the accent layer of Bold Duotone and Line Duotone icons.
- `alt:` renders an accessible `<title>` and drops the default `aria-hidden`. Passing `aria-label`, `aria-labelledby`, `role`, or `title` does the same.
- Any extra keyword becomes an SVG attribute (`style:`, `class:`, ...). `class:` merges with configured defaults.

Unknown names and weights raise `SolarIcons::Helpers::UnknownIcon` and `SolarIcons::Helpers::UnknownStyle` so typos surface immediately.

## Configuration

```ruby
# config/initializers/solar_icons.rb
SolarIcons.configure do |config|
  config.default_weight = "linear"
  config.default_size = 24
  config.default_attrs = { class: "icon" }
end
```

## Icons provenance

`lib/solar_icons/icons/` holds the SVGs as published by `@solar-icons/static`, refreshed with `node bin/fetch-icons` from the repository root. Only canonical icons ship; deprecated aliases never resolve. `.provenance.json` in that directory records the static version the files were generated from.

## Playground

`demo/` is a minimal Rails app rendering the whole catalogue, one page per style, for visual checks:

```sh
cd demo
bundle install
bundle exec rails server
```

Open http://127.0.0.1:3210 and switch styles from the nav. CI boots the same app and asserts 1,451 inline SVGs on each of the six style pages.

## Release

Bump `lib/solar_icons/version.rb`, update `CHANGELOG.md`, commit, tag `solar_icons-vX.Y.Z`, and push the tag: the publish workflow pushes the gem to RubyGems.org through OIDC trusted publishing (one-time maintainer setup on rubygems.org, no token).
