package yaml;

import yaml.Renderer;
import yaml.Parser;

/**
Facade for common YAML processing operations.
*/
class Yaml
{
	/**
	Parse a yaml document into object form.
	 
	@param document     The yaml document to parse.
	@param ?options     Parsing options (optional).
	 
	@return The parsed yaml document in object form.
	*/
	public static function parse(document:String, ?options:ParserOptions):Dynamic
	{
		if (options == null) options = new ParserOptions();
		return new Parser().parse(document, options);
	}

	/**
	Render an object graph as a yaml text document.
	
	@param data         The root object to render.
	@param ?options     Rendering options (optional).
	*/
	public static function render(data:Dynamic, ?options:RenderOptions):String
	{
		if (options == null) options = new RenderOptions();
		return new Renderer().render(data, options);
	}
	
    private function new() {}
}
