using System.Globalization;
using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Components.Rendering;

namespace SolarIcons.Blazor;

/// <summary>
/// Immutable snapshot of the defaults a <see cref="SolarProvider"/> sets. A null value means the
/// provider sets nothing and the icon falls back to the inherited CSS variable.
/// The setters update the owning provider; they require an interactive render mode.
/// </summary>
public sealed class SolarContext
{
    private readonly SolarProvider _owner;

    internal SolarContext(SolarProvider owner, string? size, string? color, string? strokeWidth, string? secondaryColor, double? secondaryOpacity)
    {
        _owner = owner;
        Size = size;
        Color = color;
        StrokeWidth = strokeWidth;
        SecondaryColor = secondaryColor;
        SecondaryOpacity = secondaryOpacity;
    }

    public string? Size { get; }
    public string? Color { get; }
    public string? StrokeWidth { get; }
    public string? SecondaryColor { get; }
    public double? SecondaryOpacity { get; }

    public Task SetSizeAsync(string? value) => _owner.SetSizeAsync(value);
    public Task SetColorAsync(string? value) => _owner.SetColorAsync(value);
    public Task SetStrokeWidthAsync(string? value) => _owner.SetStrokeWidthAsync(value);
    public Task SetSecondaryColorAsync(string? value) => _owner.SetSecondaryColorAsync(value);
    public Task SetSecondaryOpacityAsync(double? value) => _owner.SetSecondaryOpacityAsync(value);
}

/// <summary>
/// Sets the Solar CSS variables on a <c>display: contents</c> wrapper and shares the current
/// values with descendants through a <see cref="SolarContext"/> cascading parameter.
/// </summary>
public sealed class SolarProvider : ComponentBase
{
    private string? _size, _color, _strokeWidth, _secondaryColor;
    private double? _secondaryOpacity;
    private string? _seenSize, _seenColor, _seenStrokeWidth, _seenSecondaryColor;
    private double? _seenSecondaryOpacity;
    private bool _initialized;
    private SolarContext _context = default!;

    [Parameter] public string? Size { get; set; }
    [Parameter] public EventCallback<string?> SizeChanged { get; set; }
    [Parameter] public string? Color { get; set; }
    [Parameter] public EventCallback<string?> ColorChanged { get; set; }
    [Parameter] public string? StrokeWidth { get; set; }
    [Parameter] public EventCallback<string?> StrokeWidthChanged { get; set; }
    [Parameter] public string? SecondaryColor { get; set; }
    [Parameter] public EventCallback<string?> SecondaryColorChanged { get; set; }
    [Parameter] public double? SecondaryOpacity { get; set; }
    [Parameter] public EventCallback<double?> SecondaryOpacityChanged { get; set; }
    [Parameter] public RenderFragment? ChildContent { get; set; }
    [Parameter(CaptureUnmatchedValues = true)]
    public IReadOnlyDictionary<string, object>? AdditionalAttributes { get; set; }

    protected override void OnParametersSet()
    {
        Validate(Size, SecondaryOpacity);
        // A parameter only replaces the current value when the parent changed it, so a value
        // set through the context is kept until the parent sends a different one.
        var changed = !_initialized
            || Size != _seenSize || Color != _seenColor || StrokeWidth != _seenStrokeWidth
            || SecondaryColor != _seenSecondaryColor || SecondaryOpacity != _seenSecondaryOpacity;
        if (!changed) return;
        if (!_initialized || Size != _seenSize) _size = Size;
        if (!_initialized || Color != _seenColor) _color = Color;
        if (!_initialized || StrokeWidth != _seenStrokeWidth) _strokeWidth = StrokeWidth;
        if (!_initialized || SecondaryColor != _seenSecondaryColor) _secondaryColor = SecondaryColor;
        if (!_initialized || SecondaryOpacity != _seenSecondaryOpacity) _secondaryOpacity = SecondaryOpacity;
        (_seenSize, _seenColor, _seenStrokeWidth, _seenSecondaryColor, _seenSecondaryOpacity) =
            (Size, Color, StrokeWidth, SecondaryColor, SecondaryOpacity);
        _initialized = true;
        Refresh();
    }

    private static void Validate(string? size, double? opacity)
    {
        if (opacity is double value && (!double.IsFinite(value) || value < 0 || value > 1))
            throw new ArgumentOutOfRangeException(nameof(SecondaryOpacity), "Opacity must be finite and between 0 and 1.");
        if (size is not null && string.IsNullOrWhiteSpace(size))
            throw new ArgumentException("Size must not be blank.", nameof(Size));
        if (double.TryParse(size, NumberStyles.Float, CultureInfo.InvariantCulture, out var number) && (!double.IsFinite(number) || number < 0))
            throw new ArgumentOutOfRangeException(nameof(Size), "Numeric size must be finite and non-negative.");
    }

    // A new snapshot per change lets the cascading value notify every consumer.
    private void Refresh() => _context = new SolarContext(this, _size, _color, _strokeWidth, _secondaryColor, _secondaryOpacity);

    internal Task SetSizeAsync(string? value)
    {
        Validate(value, null);
        _size = value;
        return Commit(SizeChanged.InvokeAsync(value));
    }

    internal Task SetColorAsync(string? value)
    {
        _color = value;
        return Commit(ColorChanged.InvokeAsync(value));
    }

    internal Task SetStrokeWidthAsync(string? value)
    {
        _strokeWidth = value;
        return Commit(StrokeWidthChanged.InvokeAsync(value));
    }

    internal Task SetSecondaryColorAsync(string? value)
    {
        _secondaryColor = value;
        return Commit(SecondaryColorChanged.InvokeAsync(value));
    }

    internal Task SetSecondaryOpacityAsync(double? value)
    {
        Validate(null, value);
        _secondaryOpacity = value;
        return Commit(SecondaryOpacityChanged.InvokeAsync(value));
    }

    private async Task Commit(Task notify)
    {
        Refresh();
        await InvokeAsync(StateHasChanged);
        await notify;
    }

    private string Styles()
    {
        var styles = new List<string> { "display:contents" };
        if (_size is not null)
            styles.Add("--solar-size:" + (double.TryParse(_size, NumberStyles.Float, CultureInfo.InvariantCulture, out var number)
                ? number.ToString(CultureInfo.InvariantCulture) + "px" : _size));
        if (_color is not null) styles.Add("--solar-color:" + _color);
        if (_strokeWidth is not null) styles.Add("--solar-stroke-width:" + _strokeWidth);
        if (_secondaryColor is not null) styles.Add("--solar-secondary-color:" + _secondaryColor);
        if (_secondaryOpacity is double opacity) styles.Add("--solar-secondary-opacity:" + opacity.ToString(CultureInfo.InvariantCulture));
        var extra = AdditionalAttributes?.FirstOrDefault(pair => string.Equals(pair.Key, "style", StringComparison.OrdinalIgnoreCase)).Value;
        if (!string.IsNullOrWhiteSpace(Convert.ToString(extra, CultureInfo.InvariantCulture)))
            styles.Add(Convert.ToString(extra, CultureInfo.InvariantCulture)!.TrimEnd(';'));
        return string.Join(";", styles);
    }

    protected override void BuildRenderTree(RenderTreeBuilder builder)
    {
        builder.OpenElement(0, "div");
        if (AdditionalAttributes is not null)
            builder.AddMultipleAttributes(1, AdditionalAttributes.Where(pair => !string.Equals(pair.Key, "style", StringComparison.OrdinalIgnoreCase)));
        builder.AddAttribute(2, "style", Styles());
        builder.OpenComponent<CascadingValue<SolarContext>>(3);
        builder.AddComponentParameter(4, "Value", _context);
        builder.AddComponentParameter(5, "ChildContent", ChildContent);
        builder.CloseComponent();
        builder.CloseElement();
    }
}
