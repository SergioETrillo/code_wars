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
        [TestMethod]
        public void NoParticipantsTest()
        {
            string st = "";
            int[] we = new int[] { 4, 2, 1, 4, 3, 1, 2 };
            Assert.AreEqual("No participants", Rank.NthRank(st, we, 4));
            //st = "Addison,Jayden,Sofia,Michael,Andrew,Lily,Benjamin";

        }

        [TestMethod]
        public void NisLessThanNbParticipants()
        {
            string st = "Addison,Jayden,Sofia,Michael,Andrew,Lily,Benjamin";
            int[] we = new int[] { 4, 2, 1, 4, 3, 1, 2 };
            Assert.AreEqual("Not enough participants", Rank.NthRank(st, we, 8));

        }

        [TestMethod]
        public void BenjaminIsChosen()
        {
            string st = "Addison,Jayden,Sofia,Michael,Andrew,Lily,Benjamin";
            int[] we = new int[] {4, 2, 1, 4, 3, 1, 2};
            Assert.AreEqual("Benjamin", Rank.NthRank(st, we, 4));

        }

        [TestMethod]
        public void MatthewIsChosen()
        {
            string st = "Elijah,Chloe,Elizabeth,Matthew,Natalie,Jayden";
            int[] we = new int[] { 1, 3, 5, 5, 3, 6 };
            Assert.AreEqual("Matthew", Rank.NthRank(st, we, 2));
        }

    }
}