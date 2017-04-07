package pyscript;

// Parser for the Egg language, from http://eloquentjavascript.net/11_language.html
// This is intended more as an educational tool. It has several simplifications
// (eg. numbers are only ints, strings use double-quotes) to facilitate implementaiton.
class EggEngine
{
    public function new() { }

    public function execute(script:String):Dynamic
    {
        return 1;
    }

    // Interact with a native Haxe object
    public function addHostObject(obj:Dynamic):Void
    {

    }

    // Allow us to instantiate a native Haxe class
    public function addHostType<T>(clazz:Class<T>):Void
    {

    }
}