public class OneHundredDoors
{
    private bool [] _doors;
    private int size = 100;

    public OneHundredDoors()
    {
        _doors = new bool[size];

        CloseAllDoors();
    }

    public bool IsDoorOpen(int doorNumber)
    {
        return _doors[doorNumber-1];    // Assume: 101 > doorNumber > 0
    }

    public void ToggleEveryNthDoor(int n)
    {
        for (int i = n-1; i < size; i += n)
        {
            _doors[i] = !_doors[i];
        }
    }

    public void CalculateResult()
    {
        CloseAllDoors();

        for (int i = 1; i < size+1; i++)
        {
            ToggleEveryNthDoor(i);
        }
    }

    public override string ToString()
    {
        string result = "";

        for (int i = 0; i+1 < size; i++)
        {
            result += _doors[i] + "\n";
        }

        return result;
    }

    private void CloseAllDoors()
    {
        for (int i = 0; i < size; i++)
        {
            _doors[i] = false;
        }
    }
}
