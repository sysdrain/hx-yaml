package yaml.util;

class Utf8
{   
	private static var _string:UnicodeString;

    private static function newStr(string:String) {
		return _string = new UnicodeString(string);
	}

	public static function encode(string:String):UnicodeString {
		return newStr(string);
	}

	public static function length(string:String):Int {
		return string.length;
	}

	public static function charCodeAt(string:String, index:Int):Int {
		return string.charCodeAt(index);
	}

	public static function decode(string:UnicodeString):String {
		return string.toString();
	}

	public static function substring(value:String, startIndex:Int, ?endIndex:Null<Int>):String
	{
		var size = value.length;
		var pos = startIndex;
		var length = 0;
		
		if (endIndex == null)
		{
			length = size - pos;
		}
		else 
		{
			if (startIndex > endIndex)
			{
				pos = endIndex;
				endIndex = startIndex;
			}
			length = endIndex - pos;
		}
		
		return value.substr(pos, length);
	}
}
