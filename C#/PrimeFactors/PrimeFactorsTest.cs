using NUnit.Framework;

[TestFixture]
class PrimeFactorsTest
{
    [Test]
    public void IsPrimeWorksForSomeTrivialCases()
    {
        Assert.IsTrue(PrimeFactors.IsPrime(2));
        Assert.IsTrue(PrimeFactors.IsPrime(3));
        Assert.IsFalse(PrimeFactors.IsPrime(4));
        Assert.IsTrue(PrimeFactors.IsPrime(5));
        Assert.IsFalse(PrimeFactors.IsPrime(6));
        Assert.IsTrue(PrimeFactors.IsPrime(7));
    }

    [Test]
    public void TwoIsTheOnlyPrimeFactorOfTwo()
    {
        int [] actual = PrimeFactors.Get(2);
        int [] expected = new int[] { 2 };

        Assert.AreEqual(expected, actual);
    }

    [Test]
    public void ThreeIsTheOnlyPrimeFactorOfThree()
    {
        int [] actual = PrimeFactors.Get(3);
        int [] expected = new int[] { 3 };

        Assert.AreEqual(expected, actual);
    }

    [Test]
    public void TwoAndTwoAreThePrimeFactorsOfFour()
    {
        int [] actual = PrimeFactors.Get(4);
        int [] expected = new int[] { 2, 2 };

        Assert.AreEqual(expected, actual);
    }

    [Test]
    public void TwoAndThreeAreThePrimeFactorsOfSix()
    {
        int [] actual = PrimeFactors.Get(6);
        int [] expected = new int[] { 2, 3 };

        Assert.AreEqual(expected, actual);
    }

    [Test]
    public void TwoTwoAndThreeAreThePrimeFactorsOfTwelve()
    {
        int [] actual = PrimeFactors.Get(12);
        int [] expected = new int[] { 2, 2, 3 };

        Assert.AreEqual(expected, actual);
    }

    [Test]
    public void ThreeAndFiveAreThePrimeFactorsOfFifteen()
    {
        int [] actual = PrimeFactors.Get(15);
        int [] expected = new int[] { 3, 5 };

        Assert.AreEqual(expected, actual);
    }
}
