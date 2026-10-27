using System.Reflection.Metadata;
using System.Reflection.PortableExecutable;
using System.Text.Json;

using var stream = File.OpenRead(args[0]);
using var pe = new PEReader(stream);
var reader = pe.GetMetadataReader();
if (args.Length > 1)
{
    var matches = reader.TypeDefinitions.Select(reader.GetTypeDefinition)
        .Where(type => reader.GetString(type.Name) == args[1])
        .Select(type => reader.GetString(type.Namespace) + "." + reader.GetString(type.Name));
    Console.WriteLine(JsonSerializer.Serialize(matches));
    return;
}
var types = reader.TypeDefinitions.Select(handle => reader.GetTypeDefinition(handle)).Where(type => reader.GetString(type.Namespace) == "SolarIcons.Blazor").Select(type => reader.GetString(type.Name)).OrderBy(name => name, StringComparer.Ordinal).ToArray();
Console.WriteLine(JsonSerializer.Serialize(new { bytes = stream.Length, types }));
