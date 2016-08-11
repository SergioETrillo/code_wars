using Microsoft.VisualStudio.TestTools.UnitTesting;
using PriceDraw;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PriceDraw.Tests
{
    [TestClass()]
    public class ProgramTests
    {
        [TestMethod()]
        public void test1()
        {
            string st = "";
            int[] we = new int[] { 4, 2, 1, 4, 3, 1, 2 };
            Assert.AreEqual("No participants", Rank.NthRank(st, we, 4));
            //st = "Addison,Jayden,Sofia,Michael,Andrew,Lily,Benjamin";

        }


    }
}