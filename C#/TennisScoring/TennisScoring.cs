class TennisScoring
{
    private int _playerOne, _playerTwo;

    public TennisScoring(int score1=0, int score2=0)
    {
        
    }

    public void SetScores(scorePlayer1, scorePlayer2)
    {
        _playerOne = scorePlayer1;
        _playerTwo = scorePlayer2;
    }

    public bool HasPlayer1Won()
    {
        return DidFirstScoreWin(_playerOne, _playerTwo);
    }

    public bool HasPlayer2Won()
    {
        return DidFirstScoreWin(_playerTwo, _playerOne);
    }

    private bool DidFirstScoreWin(int score1, int score2)
    {
        return (score1 > score2) && (score1-score2 >= 2);
    }
}
