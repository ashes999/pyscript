package pyscript;

import massive.munit.Assert;

class PyscriptEngineTest
{
    @Test
	public function executeCanReturnAnInteger():Void
	{
        var expected = 1;

		var engine = new PyscriptEngine();
        var actual = engine.execute('return ${expected}');
        Assert.areEqual(expected, actual);
	}
}