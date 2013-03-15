using NUnit.Framework;

[TestFixture]
public class CountCoinsTest
{
    [Test]
    public void ThereAreSixWaysToMake15Cents()
    {
        int expected = 6;
        int actual = CountCoins.CountEm(15);
        Assert.AreEqual(expected, actual);
    }

    [Test]
    public void ThereIsOneWayToMake1Cent()
    {
        int expected = 1;
        int actual = CountCoins.CountEm(1);
        Assert.AreEqual(expected, actual);
    }

    [Test]
    public void ThereAreTwoWaysToMake5Cents()
    {
        int expected = 2;
        int actual = CountCoins.CountEm(5);
        Assert.AreEqual(expected, actual);
    }
}
