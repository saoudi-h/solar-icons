using System.Xml.Linq;
using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Components.Web;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;

await using var services = new ServiceCollection().AddLogging().BuildServiceProvider();
await using var renderer = new HtmlRenderer(services, services.GetRequiredService<ILoggerFactory>());
var html = await renderer.Dispatcher.InvokeAsync(async () =>
    (await renderer.RenderComponentAsync<Coexistence.CollisionExamples>(ParameterView.Empty)).ToHtmlString());
var root = XElement.Parse("<main>" + html + "</main>");
var svgs = root.Elements().Where(element => element.Name.LocalName == "svg").ToArray();
if (svgs.Length != 3 || !html.Contains("solar-heart-linear") || !html.Contains("solar-heart") || !html.Contains("blue"))
    throw new Exception("Solar and Lucide did not render independently in the same Razor component");
Console.WriteLine("Qualified Razor names resolve Solar and Lucide HeartIcon components together.");
