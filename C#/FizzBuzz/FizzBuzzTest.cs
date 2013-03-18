ing NUnit.Framework;

[TestFixture]
class FizzBuzzTest
{
    [Test]
    public void FizzBuzzRepresentationIsFizzForThree()
    {
        Assert.AreEqual("Fizz", FizzBuzz.Representation(3));
    }

    [Test]
    public void FizzBuzzRepresentationIsBuzzForFive()
    {
        Assert.AreEqual("Buzz", FizzBuzz.Representation(5));
    }

    [Test]
    public void FizzBuzzRepresentationIsFizzBuzzForFifteen()
    {
        Assert.AreEqual("FizzBuzz", FizzBuzz.Representation(15));
    }

    [Test]
    public void FizzBuzzRepresentationIsFourForFour()
    {
        Assert.AreEqual("4", FizzBuzz.Representation(4));
    }

    [Test]
    public void FizzBuzzRangeWorksForSmallRange()
    {
        string [] actual = FizzBuzz.Range(0, 5);
        string [] expected = new string [] {"FizzBuzz",
                                            "1", "2",
                                            "Fizz", "4",
                                            "Buzz"};

        Assert.AreEqual(expected, actual);
    }
}
