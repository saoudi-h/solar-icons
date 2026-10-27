using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Components.Rendering;

namespace TrimProbe;

public sealed partial class ProbeRoot : ComponentBase
{
    protected override void BuildRenderTree(RenderTreeBuilder builder)
    {
        builder.OpenElement(0, "main");
        builder.OpenElement(1, "h1");
        builder.AddContent(2, "Solar Icons package consumer");
        builder.CloseElement();
        builder.OpenElement(3, "p");
        builder.AddAttribute(4, "id", "runtime");
        builder.AddContent(5, OperatingSystem.IsBrowser() ? "WebAssembly" : "Server");
        builder.CloseElement();
        RenderControls(builder);
        RenderIcons(builder);
        builder.CloseElement();
    }
}
