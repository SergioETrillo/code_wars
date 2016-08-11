using System;
using System.Collections.Generic;
using System.Linq;


namespace PriceDraw
{
    public class Rank
    {
        static void Main(string[] args)
        {
            string st = "COLIN,AMANDBA,AMANDAB,CAROL,PauL,JOSEPH";
            var we = new int[] { 1, 4, 4, 5, 2, 1 };
            int n = 4;
            NthRank(st, we, n);
            Console.ReadLine();
        }

        public static string NthRank(string st, int[] we, int n)
        {
            // declarations
            int magic = 0;
            string result = "";

            // frontier conditions
            if (string.IsNullOrEmpty(st))
                return "No participants";
            if (we.Length < n)
                return "Not enough participants";

            // split st into an array
            string[] Names = ProcessString(st);
            int[] WinningNumbers = new int[Names.Length];

            // calculate winning numbers
            for (int i = 0; i < Names.Length; i++)
            {
                magic = CalculateWinningNb(Names[i], we[i]);
                WinningNumbers[i] = magic;
            }

            // create dictionary to store name,winning value

            Dictionary<string, int> items = CreateDictionary(Names, WinningNumbers);

            // sort using LINQ
            var sorted = items.OrderByDescending(p => p.Value)
                               .ThenBy(p => p.Key).ToDictionary(p => p.Key, p => p.Value);

            // convert to array
            string[] SortedArray = new string[Names.Length];
            SortedArray = sorted.Keys.ToArray();

            // get the result based on the position n and return it
            result = SortedArray[n - 1];
            return result;
        }

        private static Dictionary<string, int> CreateDictionary(string[] Names, int[] WinningNumbers)
        {
            var items = new Dictionary<string, int>();
            for (int i = 0; i < WinningNumbers.Length; i++)
            {
                items.Add(Names[i], WinningNumbers[i]);
            }

            return items;
        }

        internal static string[] ConcatenateNamesNumbers(int[] WinningNumbers, string[] names)
        {
            string[] result = new string[WinningNumbers.Length];
            for (int i=0; i<WinningNumbers.Length; i++)
            {
                result[i] = WinningNumbers[i] + names[i];
            }

            return result;
        }

        internal static int CalculateWinningNb(string name, int position)
        {
            const int PositionOfA = 96;
            int total = 0;

            foreach (char c in name)
            {
                char lowerChar = char.ToLower(c);
                total += lowerChar - PositionOfA;
            }

            return (total + name.Length)*position;

        }

        internal static string[] ProcessString(string st)
        {
            string[] names = st.Split(',');
            return names;
        }
    }
}
