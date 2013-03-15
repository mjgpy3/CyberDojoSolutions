public class CountCoins
{
    public static int CountEm(int amount)
    {
        int count = 0;

        for (int nP = 0; nP <= amount; nP++)
            for (int nN = 0; nN <= amount/5.0; nN++)
                for (int nD = 0; nD <= amount/10.0; nD++)
                    for (int nQ = 0; nQ <= amount/25.0; nQ++)
                        if (nP + 5*nN + 10*nD + 25*nQ == amount)
                            count += 1;

        return count;
    }
}
