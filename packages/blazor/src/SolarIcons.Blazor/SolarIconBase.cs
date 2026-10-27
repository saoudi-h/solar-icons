using System.Globalization;
using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Components.Rendering;

namespace SolarIcons.Blazor;

public abstract class SolarIconBase : ComponentBase
{
    [Parameter] public string? Size { get; set; }
    [Parameter] public string? Color { get; set; }
    [Parameter] public string? StrokeWidth { get; set; }
    [Parameter] public string? SecondaryColor { get; set; }
    [Parameter] public double? SecondaryOpacity { get; set; }
    [Parameter] public string? Title { get; set; }
    [Parameter] public string? Class { get; set; }
    [Parameter] public string? Style { get; set; }
    [Parameter] public bool Isolated { get; set; }
    [Parameter(CaptureUnmatchedValues = true)]
    public IReadOnlyDictionary<string, object>? AdditionalAttributes { get; set; }

    protected abstract string IconName { get; }
    protected abstract string? StyleKey { get; }
    protected abstract string GetSvgBody();

    protected override void OnParametersSet()
    {
        if (SecondaryOpacity is double opacity && (!double.IsFinite(opacity) || opacity < 0 || opacity > 1))
            throw new ArgumentOutOfRangeException(nameof(SecondaryOpacity), "Opacity must be finite and between 0 and 1.");
        if (Size is not null && string.IsNullOrWhiteSpace(Size))
            throw new ArgumentException("Size must not be blank.", nameof(Size));
        if (double.TryParse(Size, NumberStyles.Float, CultureInfo.InvariantCulture, out var size) && (!double.IsFinite(size) || size < 0))
            throw new ArgumentOutOfRangeException(nameof(Size), "Numeric size must be finite and non-negative.");
    }

    private object? Attribute(string name) => AdditionalAttributes?
        .FirstOrDefault(pair => string.Equals(pair.Key, name, StringComparison.OrdinalIgnoreCase)).Value;

    private bool HasAttribute(string name) => AdditionalAttributes?.Keys.Any(key => string.Equals(key, name, StringComparison.OrdinalIgnoreCase)) == true;
    private bool HasText(string name) => !string.IsNullOrWhiteSpace(Convert.ToString(Attribute(name), CultureInfo.InvariantCulture));

    protected override void BuildRenderTree(RenderTreeBuilder builder)
    {
        var informative = !string.IsNullOrWhiteSpace(Title) || HasText("aria-label") || HasText("aria-labelledby");
        var iconClass = "solar solar-" + IconName + (StyleKey is null ? "" : "-" + StyleKey);
        var classes = string.Join(" ", new[] { iconClass, Class, Convert.ToString(Attribute("class"), CultureInfo.InvariantCulture) }.Where(value => !string.IsNullOrWhiteSpace(value)));
        var styles = new List<string>();
        if (Isolated)
        {
            styles.Add("--solar-secondary-color:initial");
            styles.Add("--solar-secondary-opacity:initial");
        }
        if (Size is not null)
        {
            var length = double.TryParse(Size, NumberStyles.Float, CultureInfo.InvariantCulture, out var number)
                ? number.ToString(CultureInfo.InvariantCulture) + "px" : Size;
            styles.Add("width:" + length);
            styles.Add("height:" + length);
        }
        else if (!Isolated) styles.Add("font-size:var(--solar-size,24px)");
        if (Color is not null) styles.Add("color:" + Color);
        if (StrokeWidth is not null) styles.Add("stroke-width:" + StrokeWidth);
        if (SecondaryColor is not null) styles.Add("--solar-secondary-color:" + SecondaryColor);
        if (SecondaryOpacity is double opacity) styles.Add("--solar-secondary-opacity:" + opacity.ToString(CultureInfo.InvariantCulture));
        // Explicit CSS is applied last, so consumers can override parameter-generated CSS.
        if (!string.IsNullOrWhiteSpace(Style)) styles.Add(Style.TrimEnd(';'));
        if (Attribute("style") is object extraStyle) styles.Add(extraStyle.ToString()!.TrimEnd(';'));

        builder.OpenElement(0, "svg");
        builder.AddAttribute(1, "xmlns", "http://www.w3.org/2000/svg");
        builder.AddAttribute(2, "viewBox", "0 0 24 24");
        builder.AddAttribute(3, "fill", "none");
        builder.AddAttribute(4, "width", Isolated ? "24px" : "1em");
        builder.AddAttribute(5, "height", Isolated ? "24px" : "1em");
        builder.AddAttribute(6, "color", Isolated ? "currentColor" : "var(--solar-color,currentColor)");
        builder.AddAttribute(7, "stroke-width", Isolated ? "1.5" : "var(--solar-stroke-width,1.5)");
        builder.AddAttribute(8, "focusable", "false");
        if (!HasAttribute("aria-hidden") && !informative) builder.AddAttribute(9, "aria-hidden", "true");
        if (!HasAttribute("role") && informative) builder.AddAttribute(10, "role", "img");
        builder.AddAttribute(11, "class", classes);
        builder.AddAttribute(12, "style", string.Join(";", styles));
        if (AdditionalAttributes is not null)
            builder.AddMultipleAttributes(13, AdditionalAttributes.Where(pair =>
                !string.Equals(pair.Key, "class", StringComparison.OrdinalIgnoreCase) &&
                !string.Equals(pair.Key, "style", StringComparison.OrdinalIgnoreCase)));
        if (!string.IsNullOrWhiteSpace(Title))
        {
            builder.OpenElement(14, "title");
            builder.AddContent(15, Title);
            builder.CloseElement();
        }
        // Only checked-in catalogue geometry is emitted as markup; user strings use encoded attributes/content.
        builder.AddMarkupContent(16, GetSvgBody());
        builder.CloseElement();
    }
}

public abstract class SolarDynamicIconBase : SolarIconBase
{
    [Parameter] public IconWeight Weight { get; set; } = IconWeight.Linear;
    protected override string? StyleKey => null;
    protected override void OnParametersSet()
    {
        base.OnParametersSet();
        if (!Enum.IsDefined(Weight)) throw new ArgumentOutOfRangeException(nameof(Weight));
    }
}
