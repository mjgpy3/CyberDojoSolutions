using System;
using System.Collections.Generic;

static class PrimeFactors
{
    public static int [] Get(int n)
    {
        List<int> primeFactors = new List<int>();

        for (int i = 2; n > 1; i++)
        {
            while (n%i == 0 && n > 1 && IsPrime(i))
            {
                primeFactors.Add(i);
                n /= i;
            }
        }
        return primeFactors.ToArray();
    }

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
