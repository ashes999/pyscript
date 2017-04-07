package pyscript;

import massive.munit.Assert;

class EggEngineTest
{
    @Test
	public function executeCanReturnAnInteger():Void
	{
        var expected = 1;

		var engine = new EggEngine();
        var actual = engine.execute("???");
        Assert.areEqual(expected, actual);
	}
}