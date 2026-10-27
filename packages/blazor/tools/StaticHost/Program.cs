using Microsoft.Extensions.FileProviders;

var builder = WebApplication.CreateBuilder(args);
var root = Path.GetFullPath(builder.Configuration["root"] ?? throw new ArgumentException("--root is required"));
var app = builder.Build();
var provider = new PhysicalFileProvider(root);
app.UseDefaultFiles(new DefaultFilesOptions { FileProvider = provider });
app.UseStaticFiles(new StaticFileOptions { FileProvider = provider, ServeUnknownFileTypes = true, DefaultContentType = "application/octet-stream" });
app.Run();
