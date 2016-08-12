/*

Number of people in the bus

There is a bus moving in the city, and it takes and drop some people in each bus stop.

You are provided a list (or array in JS) of integer array. Each integer array has two items which represent number of people get into bus (The first item) and number of people get off the bus (The second item).

The first integer array has 0 number in the second item, since the bus is empty in the first bus stop.

Your task is to return number of people in the bus after the last bus station. Take a look on the test cases :)

Please keep in mind that the test cases ensure that the number of people in the bus is always >= 0. So the return integer can't be negative.

*/

using System.Collections.Generic;

public class Kata
{
    public static int Number(List<int[]> peopleListInOut)
    {
        int result = 0;
        foreach(var busStop in peopleListInOut)
        {
           result += busStop[0] - busStop[1];
        }
        return result;
    }
}


/* Tests */

using NUnit.Framework;
  using System;
  using System.Collections.Generic;


    [TestFixture]
    public class MyTest
    {
        [Test]
        public void FirstTest()
        {
            List<int[]> peopleList = new List<int[]>(){new []{10,0},new []{3,5}, new []{5,8}};
            Assert.AreEqual(5,Kata.Number(peopleList));
        }
        [Test]
        public void SecondTest()
        {
            List<int[]> peopleList = new List<int[]>() { new[] { 3, 0 }, new[] { 9, 1 }, new[] { 4, 10 }, new[] { 12, 2 }, new[] { 6, 1 }, new[] { 7, 10 } };
            Assert.AreEqual(17, Kata.Number(peopleList));
        }
        [Test]
        public void ThirdTest()
        {
            List<int[]> peopleList = new List<int[]>() { new[] { 3, 0 }, new[] { 9, 1 }, new[] { 4, 8 }, new[] { 12, 2 }, new[] { 6, 1 }, new[] { 7, 8 } };
            Assert.AreEqual(21, Kata.Number(peopleList));
        }
    }