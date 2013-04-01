using NUnit.Framework;

[TestFixture]
class TennisScoringTest
{
    [Test]
    public void AZeroZeroGameHasNoWinner()
    {
        TennisScoring game = new TennisScoring();

        game.SetScores(0, 0);
        Assert.IsFalse(game.HasPlayer1Won());
        Assert.IsFalse(game.HasPlayer2Won());
    }

    [Test]
    public void AFourToTwoGameIsAWin()
    {
        TennisScoring game = new TennisScoring();

        game.SetScores(4, 2);
        Assert.IsTrue(game.HasPlayer1Won());
        Assert.IsFalse(game.HasPlayer2Won());

        game.SetScores(2, 4);
        Assert.IsTrue(game.HasPlayer2Won());
        Assert.IsFalse(game.HasPlayer1Won());
    }

    [Test]
    public void NoWinnerInAThreeToFourGame()
    {
        TennisScoring game = new TennisScoring();

        game.SetScores(3, 4);
        Assert.IsFalse(game.HasPlayer2Won());
        Assert.IsFalse(game.HasPlayer1Won());
    }

    [Test]
    public void AGameWithMoreThanFourIsNotWonUnlessMoreThanTwoAbove()
    {
        TennisScoring game = new TennisScoring();

        game.SetScores(7, 6);
        Assert.IsFalse(game.HasPlayer2Won());
        Assert.IsFalse(game.HasPlayer1Won());

        game.SetScores(7, 5);
        Assert.IsTrue(game.HasPlayer1Won());
        Assert.IsFalse(game.HasPlayer2Won());
    }

    [Test]
    public void GetScoreNameWorksExpectedlyForPlayerOne()
    {
        TennisScoring game = new TennisScoring();
        string [] expected = {"love",
                              "fifteen",
                              "thirty", 
                              "forty",
                              ""};

        for (int i = 0; i < 5; i += 1)
        {
            game.SetScores(i, 0);
            Assert.AreEqual(expected[i], game.GetPlayer1ScoreName());
        }
    }

    [Test]
    public void GetScoreNameWorksExpectedlyForPlayerTwo()
    {
        TennisScoring game = new TennisScoring();
        string [] expected = {"love",
                                            "fifteen",
                                            "thirty", 
                                            "forty",
                                            ""};

        for (int i = 0; i < 5; i += 1)
        {
            game.SetScores(0, i);
            Assert.AreEqual(expected[i], game.GetPlayer2ScoreName());
        }
    }

    [Test]
    public void DueceWorksExpectedlyForSomeSimpleCases()
    {
        TennisScoring game = new TennisScoring();

        game.SetScores(3, 3);

        Assert.AreEqual("deuce", game.GetPlayer1ScoreName());
        Assert.AreEqual("deuce", game.GetPlayer2ScoreName());

        game.SetScores(7, 7);

        Assert.AreEqual("deuce", game.GetPlayer1ScoreName());
        Assert.AreEqual("deuce", game.GetPlayer2ScoreName());
    }

    [Test]
    public void AdvantageWorksExpectedllyForSomeSimpleCases()
    {
        TennisScoring game = new TennisScoring();

        game.SetScores(3, 4);

        Assert.AreEqual("advantage", game.GetPlayer2ScoreName());
        Assert.AreEqual("forty", game.GetPlayer1ScoreName());

        game.SetScores(4, 3);

        Assert.AreEqual("forty", game.GetPlayer2ScoreName());
        Assert.AreEqual("advantage", game.GetPlayer1ScoreName());
    }
}
