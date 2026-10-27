using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Components.Web;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using SolarIcons.Blazor;

await using var services=new ServiceCollection().AddLogging().BuildServiceProvider();
await using var renderer=new HtmlRenderer(services,services.GetRequiredService<ILoggerFactory>());
var html=await renderer.Dispatcher.InvokeAsync(async()=> (await renderer.RenderComponentAsync<HomeLinearIcon>(ParameterView.FromDictionary(new Dictionary<string,object?>{{"Title","Installed from local NuGet"}}))).ToHtmlString());
if(!html.Contains("solar-home-linear") || !html.Contains("Installed from local NuGet")) throw new Exception("Package rendering failed");
Console.WriteLine(html);
Console.WriteLine("Local NuGet package rendered successfully without a project reference.");
