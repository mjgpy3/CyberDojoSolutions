using System.Collections;
using System;

class LcdDigits
{
    public static string Representation(uint number)
    {
        string firstLine = "",
               secondLine = "",
               thirdLine = "",
               result = "";

        uint [] digits = NumberToDigits(number);

        for (int i = 0; i < digits.Length; i++)
        {
            firstLine += GetFirstLine(digits[i]) +
                        (i != digits.Length-1 ? " " : "");
            secondLine += GetSecondLine(digits[i]) +
                        (i != digits.Length-1 ? " " : "");
            thirdLine += GetThirdLine(digits[i]) +
                        (i != digits.Length-1 ? " " : "");
        }
 
        result += firstLine + "\n";
        result += secondLine + "\n";
        result += thirdLine + "\n";
        return result;
    }

    private static uint [] NumberToDigits(uint n)
    {
        uint length = LengthOfNumber(n);
        uint [] answer = new uint[length];

        for (uint i = length-1; i > 0; i--)
        {
            answer[i] = n%10;
            n /= 10;
        }

        answer[0] = n;

        return answer;
    }

    private static uint LengthOfNumber(uint n)
    {
        if (n <= 1)
        {
            return 1;
        }
        return (uint) Math.Ceiling(Math.Log10(n));
    }

    private static string GetFirstLine(uint number)
    {
        if (number == 1 || number == 4)
        {
            return "...";
        }
        
        return "._.";
    }

    private static string GetSecondLine(uint number)
    {
        if (number == 0)
        {
            return "|.|";
        }
        else if (number == 1 || number == 7)
        {
            return "..|";
        }
        else if (number == 2 || number == 3)
        {
            return "._|";
        }
        else if (number == 5 || number == 6)
        {
            return "|_.";
        }
        return "|_|";
    }

    private static string GetThirdLine(uint number)
    {
        if (number == 0 || number == 6 || number == 8)
        {
            return "|_|";
        }
        else if (number == 2)
        {
            return "|_.";
        }
        else if (number == 3 || number == 5)
        {
            return "._|";
        }
        return "..|";
    }
}
