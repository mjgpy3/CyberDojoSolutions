using NUnit.Framework;

[TestFixture]
class LcdDigitsTest
{
    [Test]
    public void ZeroReturnsTheCorrectGrid()
    {
        string actual = LcdDigits.Representation(0);
        string expected = "._.\n|.|\n|_|\n";
        
        Assert.AreEqual(expected, actual);
    }

    [Test]
    public void OneReturnsTheCorrectGrid()
    {
        string actual = LcdDigits.Representation(1);
        string expected = "...\n..|\n..|\n";

        Assert.AreEqual(expected, actual);
    }

    [Test]
    public void TwoReturnsTheCorrectGrid()
    {
        string actual = LcdDigits.Representation(2);
        string expected = "._.\n._|\n|_.\n";

        Assert.AreEqual(expected, actual);
    }

    [Test]
    public void ThreeReturnsTheCorrectGrid()
    {
        string actual = LcdDigits.Representation(3);
        string expected = "._.\n._|\n._|\n";

        Assert.AreEqual(expected, actual);
    }

    [Test]
    public void FourReturnsTheCorrectGrid()
    {
        string actual = LcdDigits.Representation(4);
        string expected = "...\n|_|\n..|\n";

        Assert.AreEqual(expected, actual);
    }

    [Test]
    public void FiveReturnsTheCorrectGrid()
    {
        string actual = LcdDigits.Representation(5);
        string expected = "._.\n|_.\n._|\n";

        Assert.AreEqual(expected, actual);
    }

    [Test]
    public void SixReturnsTheCorrectGrid()
    {
        string actual = LcdDigits.Representation(6);
        string expected = "._.\n|_.\n|_|\n";

        Assert.AreEqual(expected, actual);
    }

    [Test]
    public void SevenReturnsTheCorrectGrid()
    {
        string actual = LcdDigits.Representation(7);
        string expected = "._.\n..|\n..|\n";

        Assert.AreEqual(expected, actual);
    }

    [Test]
    public void EightReturnsTheCorrectGrid()
    {
        string actual = LcdDigits.Representation(8);
        string expected = "._.\n|_|\n|_|\n";

        Assert.AreEqual(expected, actual);
    }

    [Test]
    public void NineReturnsTheCorrectGrid()
    {
        string actual = LcdDigits.Representation(9);
        string expected = "._.\n|_|\n..|\n";

        Assert.AreEqual(expected, actual);
    }

    [Test]
    public void OutputIsAsExpectedForNineHundredAndTen()
    {
        string actual = LcdDigits.Representation(910);
        string expected = "._. ... ._.\n|_| ..| |.|\n..| ..| |_|\n";

        Assert.AreEqual(expected, actual);
    }
}
