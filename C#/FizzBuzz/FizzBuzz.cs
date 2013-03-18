ing System;

static class FizzBuzz
{
    public static string Representation(int n)
    {
        string result = "";

        if (n%3 == 0)
        {
            result += "Fizz";
        }
        if (n%5 == 0)
        {
            result +=  "Buzz";
        }
        if (result == "")
        {
            result = n.ToString();
        }

        return result;
    }

    public static string [] Range(int s, int e)
    {
        int size = e-s+1;
        string[] result = new string[size];

        for (int i = 0; (i+s) <= e; i++)
        {
            result[i] = Representation(i+s);
        }

        return result;
    }

    public static void StandardChallengeSolution()
    {
        foreach (string result in Range(1, 100))
        {
            System.Console.WriteLine(result);
        }
    }
}
