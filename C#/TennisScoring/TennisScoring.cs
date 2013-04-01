using System;

class TennisScoring
{
    private int _playerOne, _playerTwo;

    public TennisScoring(int score1=0, int score2=0)
    {
        SetScores(score1, score2);
    }

    public void SetScores(int scorePlayer1, int scorePlayer2)
    {
        _playerOne = scorePlayer1;
        _playerTwo = scorePlayer2;
    }

    public string GetPlayer1ScoreName()
    {
        return GetScoreName(_playerOne);
    }

    public string GetPlayer2ScoreName()
    {
        return GetScoreName(_playerTwo);
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

    private string GetScoreName(int score)
    {
        if (_playerOne == _playerTwo && _playerOne >= 3)
        {
            return "deuce";
        }
        if (Math.Abs(_playerOne-_playerTwo) == 1 && (_playerOne+_playerTwo) >= 6)
        {
            if (_playerOne == score && _playerOne > _playerTwo)
            {
                return "advantage";
            }
            if (_playerTwo == score && _playerTwo > _playerOne)
            {
                return "advantage";
            }
        }

        switch (score)
        {
            case 0:
                return "love";
            case 1:
                return "fifteen";
            case 2:
                return "thirty";
            case 3:
                return "forty";
            default:
                return "";
        }
    }
}
