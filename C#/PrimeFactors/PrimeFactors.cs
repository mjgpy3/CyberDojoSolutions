using System;

static class PrimeFactors
{
    public static bool IsPrime(int n)
    {
        if (n <= 3)
        {
            return true;    // Assume no negatives
        }
        else if (n%2 == 0)
        {
            return false;
        }

        for (int i = 5; i <= Math.Sqrt(n); i += 2)
        {
            if (n%i == 0)
            {
                return false;
            }
        }
        return true;
    }
}
