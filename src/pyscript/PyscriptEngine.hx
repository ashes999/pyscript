package pyscript;

class PyscriptEngine
{
    public function new() { }

    public function execute(script:String):Dynamic
    {
        return 0;
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