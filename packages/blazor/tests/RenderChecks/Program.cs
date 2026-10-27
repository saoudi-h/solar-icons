using System.Globalization;
using System.Reflection;
using System.Text.Json;
using System.Xml.Linq;
using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Components.Web;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using SolarIcons.Blazor;

var root = Path.GetFullPath(Path.Combine(AppContext.BaseDirectory, "../../../../../"));
var fixture = JsonSerializer.Deserialize<List<Payload>>(File.ReadAllText(Path.Combine(root, "artifacts/catalogue-fixture.json")), new JsonSerializerOptions { PropertyNameCaseInsensitive = true })!;
var services = new ServiceCollection().AddLogging().BuildServiceProvider();
var loggerFactory = services.GetRequiredService<ILoggerFactory>();
var assertions = 0;
void Assert(bool condition, string message) { assertions++; if (!condition) throw new Exception(message); }
await using var renderer = new HtmlRenderer(services, loggerFactory);
async Task<string> Render(Type type, Dictionary<string, object?>? values = null, HtmlRenderer? target = null) =>
    await (target ?? renderer).Dispatcher.InvokeAsync(async () => (await (target ?? renderer).RenderComponentAsync(type, ParameterView.FromDictionary(values ?? []))).ToHtmlString());
async Task<XElement> Svg<T>(Dictionary<string, object?>? values = null) where T : IComponent => XElement.Parse(await Render(typeof(T), values));
Dictionary<string, object?> Attrs(params (string Name, object Value)[] values) => new() { ["AdditionalAttributes"] = values.ToDictionary(x => x.Name, x => x.Value) };

var svg = await Svg<HomeLinearIcon>();
Assert(svg.Name.LocalName == "svg", "Root must be SVG");
Assert((string?)svg.Attribute("viewBox") == "0 0 24 24", "viewBox");
Assert((string?)svg.Attribute("aria-hidden") == "true", "Decorative icons hidden");
Assert((string?)svg.Attribute("focusable") == "false", "Decorative icons not focusable");
Assert((string?)svg.Attribute("class") == "solar solar-home-linear", "Static CSS class");
Assert((string?)svg.Attribute("color") == "var(--solar-color,currentColor)", "Inherited color");
Assert((string?)svg.Attribute("stroke-width") == "var(--solar-stroke-width,1.5)", "Inherited stroke");
var dynamicDefault = await Svg<HomeIcon>();
Assert(dynamicDefault.Elements().Select(x => x.ToString()).SequenceEqual(svg.Elements().Select(x => x.ToString())), "Dynamic defaults to Linear");
Assert((string?)dynamicDefault.Attribute("class") == "solar solar-home", "Dynamic CSS class");
var labelled = await Svg<HeartIcon>(Attrs(("aria-label", "Favorite")));
Assert(labelled.Attribute("aria-hidden") is null && (string?)labelled.Attribute("role") == "img", "Label exposes informative icon");
var referenced = await Svg<HomeIcon>(Attrs(("aria-labelledby", "existing-heading")));
Assert(referenced.Attribute("aria-hidden") is null, "Labelledby exposes icon");
var title = await Render(typeof(HomeIcon), new() { ["Title"] = "<script>alert('x')</script>" });
Assert(title.Contains("&lt;script&gt;") && !title.Contains("<script>"), "Title is encoded");
var explicitHidden = await Svg<HomeIcon>(new() { ["Title"] = "Hidden intentionally", ["AdditionalAttributes"] = new Dictionary<string, object> { { "aria-hidden", "true" }, { "role", "presentation" } } });
Assert((string?)explicitHidden.Attribute("aria-hidden") == "true" && (string?)explicitHidden.Attribute("role") == "presentation", "Accessibility overrides respected");
var hostile = "\"><script>alert('attribute & title')</script><svg onload=\"alert(1)";
foreach (var component in new[] { typeof(HomeLinearIcon), typeof(HomeIcon) })
{
    var escaped = XElement.Parse(await Render(component, new()
    {
        ["Title"] = hostile, ["Class"] = hostile, ["Style"] = "--test:" + hostile,
        ["Color"] = hostile, ["Size"] = hostile, ["StrokeWidth"] = hostile,
        ["SecondaryColor"] = hostile,
        ["AdditionalAttributes"] = new Dictionary<string, object> { ["aria-label"] = hostile, ["data-probe"] = hostile }
    }));
    Assert(escaped.Descendants().All(node => node.Name.LocalName != "script"), "User text cannot create script elements");
    Assert(!escaped.DescendantsAndSelf().Attributes().Any(attribute => attribute.Name.LocalName == "onload"), "User text cannot create event attributes");
    Assert(escaped.Elements().Single(node => node.Name.LocalName == "title").Value == hostile, "Title round-trips as text");
    foreach (var name in new[] { "aria-label", "data-probe" }) Assert((string?)escaped.Attribute(name) == hostile, $"{name} round-trips as an encoded attribute");
    Assert(((string?)escaped.Attribute("class"))!.Contains(hostile), "Class is encoded");
    Assert(((string?)escaped.Attribute("style"))!.Contains(hostile), "CSS parameter values remain inside the style attribute");
}
var custom = await Svg<HomeIcon>(new() { ["Size"] = "24", ["Class"] = "my-icon", ["Style"] = "color:purple", ["Color"] = "red", ["SecondaryOpacity"] = 0d, ["AdditionalAttributes"] = new Dictionary<string, object> { { "data-check", "yes" }, { "width", "72" } } });
Assert(((string?)custom.Attribute("class"))!.Contains("my-icon"), "CSS class merged");
Assert((string?)custom.Attribute("data-check") == "yes" && (string?)custom.Attribute("width") == "72", "Additional attributes forwarded and override defaults");
var style = (string)custom.Attribute("style")!;
Assert(style.Contains("width:24px") && style.Contains("--solar-secondary-opacity:0") && style.EndsWith("color:purple"), "Numeric size, zero opacity, CSS precedence");
var cssSize = await Svg<HomeIcon>(new() { ["Size"] = "2rem" });
Assert(((string?)cssSize.Attribute("style"))!.Contains("width:2rem"), "CSS size supported");
var isolated = await Svg<HomeIcon>(new() { ["Isolated"] = true });
Assert((string?)isolated.Attribute("color") == "currentColor" && (string?)isolated.Attribute("width") == "24px", "Isolation defaults");
Assert(((string?)isolated.Attribute("style"))!.Contains("--solar-secondary-color:initial"), "Isolation resets accent inheritance");
var previousCulture = CultureInfo.CurrentCulture;
try
{
    CultureInfo.CurrentCulture = CultureInfo.GetCultureInfo("fr-FR");
    var cultured = await Svg<HeartIcon>(new() { ["SecondaryOpacity"] = 0.4d });
    Assert(((string?)cultured.Attribute("style"))!.Contains("opacity:0.4"), "Invariant opacity formatting");
}
finally { CultureInfo.CurrentCulture = previousCulture; }
foreach (var (parameter, value) in new (string, object)[] { ("SecondaryOpacity", -0.1d), ("SecondaryOpacity", 1.1d), ("SecondaryOpacity", double.NaN), ("Size", "-1"), ("Weight", (IconWeight)999) })
{
    var rejected = false;
    try { await Render(typeof(HomeIcon), new() { [parameter] = value }); } catch (ArgumentException) { rejected = true; }
    Assert(rejected, $"Invalid {parameter} rejected");
}
var types = typeof(HomeIcon).Assembly.GetTypes().Where(type => !type.IsAbstract && typeof(SolarIconBase).IsAssignableFrom(type)).ToArray();
var obsolete = types.Where(type => type.GetCustomAttribute<ObsoleteAttribute>() is not null).ToArray();
var aliasTypes = types.Where(type => type.BaseType != typeof(SolarIconBase) && type.BaseType != typeof(SolarDynamicIconBase)).ToArray();
foreach (var alias in aliasTypes)
{
    Assert(await Render(alias) == await Render(alias.BaseType!), $"Alias {alias.Name} matches canonical output");
}
Console.WriteLine($"API assertions: {assertions}; alias components rendered: {aliasTypes.Length} ({obsolete.Length} deprecated)");
var assembly = typeof(HomeIcon).Assembly;
for (var offset = 0; offset < fixture.Count; offset += 100)
{
    await using var batch = new HtmlRenderer(services, loggerFactory);
    foreach (var item in fixture.Skip(offset).Take(100))
    {
        var actual = XElement.Parse(await Render(assembly.GetType("SolarIcons.Blazor." + item.Type)!, target: batch));
        var expected = XElement.Parse("<svg xmlns=\"http://www.w3.org/2000/svg\">" + item.Body + "</svg>");
        Assert(actual.Elements().Select(x => x.ToString(SaveOptions.DisableFormatting)).SequenceEqual(expected.Elements().Select(x => x.ToString(SaveOptions.DisableFormatting))), $"Lossless SVG payload: {item.Type}");
        var dynamicType = assembly.GetType("SolarIcons.Blazor." + item.Type[..^(item.Weight.Length + 4)] + "Icon")!;
        var dynamicSvg = XElement.Parse(await Render(dynamicType, new() { ["Weight"] = Enum.Parse<IconWeight>(item.Weight) }, batch));
        Assert(dynamicSvg.Elements().Select(x => x.ToString(SaveOptions.DisableFormatting)).SequenceEqual(expected.Elements().Select(x => x.ToString(SaveOptions.DisableFormatting))), $"Dynamic SVG payload: {item.Type}");
    }
}
var framework = System.Runtime.InteropServices.RuntimeInformation.FrameworkDescription;
var result = new { passed = true, framework, assertions, logicalIcons = fixture.Select(x => x.Name).Distinct().Count(), svgPayloads = fixture.Count, componentTypes = types.Length, aliasComponents = aliasTypes.Length, deprecatedAliases = obsolete.Length };
File.WriteAllText(Path.Combine(root, $"artifacts/render-checks-net{Environment.Version.Major}.0.json"), JsonSerializer.Serialize(result, new JsonSerializerOptions { WriteIndented = true }));
Console.WriteLine(JsonSerializer.Serialize(result));
record Payload(string Name, string Weight, string Type, string Body);
