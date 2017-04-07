package pyscript;

// Parser for the Egg language, from http://eloquentjavascript.net/11_language.html
// This is intended more as an educational tool. It has several simplifications
// (eg. numbers are only ints, strings use double-quotes) to facilitate implementaiton.
class EggEngine
{
    public function new() { }

    public function execute(script:String):Dynamic
    {
        return new EggParser().parseExpression(script);
    }
}

class EggParser
{
    public function new() { }
    
    public function parseExpression(program:String)
    {
        program = skipSpace(program);
        var expr:TypeAndValue;
        var matchedLength:Int;

        var valueRegex = new EReg("^\"([^\"]*)\"", "");
        var numberRegex = new EReg("^(\\d+)\\b", "");
        var wordRegex = new EReg("^[^\\s(),\"]+", "");

        if (valueRegex.match(program))
        {
            expr = new TypeAndValue("value", valueRegex.matched(1));
            matchedLength = valueRegex.matched(0).length;
        }
        else if (numberRegex.match(program))
        {
            expr = new TypeAndValue("value", Std.parseInt(numberRegex.matched(1)));
            matchedLength = numberRegex.matched(0).length;
        }
        else if (wordRegex.match(program))
        {
            expr = new TypeAndValue("word", wordRegex.matched(0));
            matchedLength = wordRegex.matched(0).length;
        }
        else
        {
            throw "Unexpected syntax: " + program;
        }

        //return parseApply(expr, program.substr(matchedLength));
    }

    private function skipSpace(text:String):String
    {
        // NO TABS ALLOWED. Only spaces.
        var first = text.indexOf(" ");
        
        if (first == -1) {
            return "";
        }

        return text.substr(first);
    }
}

class TypeAndValue
{
    public var type(default, null):String;
    public var value(default, null):Dynamic;

    public function new(type:String, value:Dynamic)
    {
        this.type = type;
        this.value = value;
    }
}

class Program : TypeAndValue
{

}