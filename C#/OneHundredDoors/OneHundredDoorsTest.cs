using NUnit.Framework;
using System;

[TestFixture]
class TestOneHundredDoors
{
    public TestOneHundredDoors()
    {
        // Let's see the result!
        OneHundredDoors resultMaker = new OneHundredDoors();
        resultMaker.CalculateResult();
        System.Console.WriteLine(resultMaker.ToString());
    }

    [Test]
    public void ANewOneHundredDoorObjectHasAllDoorsClosed()
    {
        OneHundredDoors testMe = new OneHundredDoors();

        for (int i = 1; i < 101; i++)
        {
            Assert.IsFalse(testMe.IsDoorOpen(i));
        }
    }

    [Test]
    public void ToggleEveryNthDoorMakesOnlyEvenDoorsOpenWhenNEquals2()
    {
        OneHundredDoors testMe = new OneHundredDoors();

        testMe.ToggleEveryNthDoor(2);

        for (int i = 1; i < 101; i++)
        {
            if (i%2 == 0)    // Even door
            {
                Assert.IsTrue(testMe.IsDoorOpen(i));
            }
            else
            {
                Assert.IsFalse(testMe.IsDoorOpen(i));
            }
        }
    }

    [Test]
    public void ToggleEveryNthDoorMakesDoorsDivisibleBy3OpenWhenNEquals3()
    {
        OneHundredDoors testMe = new OneHundredDoors();

        testMe.ToggleEveryNthDoor(3);

        for (int i = 1; i < 101; i++)
        {
            if (i%3 == 0)
            {
                Assert.IsTrue(testMe.IsDoorOpen(i));
            }
            else
            {
                Assert.IsFalse(testMe.IsDoorOpen(i));
            }
        }
    }
}
