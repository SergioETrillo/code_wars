public class FirstClass
{
    public static int sum (int a, int b)
    {
        int c = (a + b);
        return c;
    }
}

namespace Solution {
  using NUnit.Framework;
  using System;

  [TestFixture]
  public class FirstClassTest
  {
    [Test]
    public void testSum()
    {
       int a = 1;
       int b = 2;
       Assert.AreEqual(3, FirstClass.sum(a, b));
    }
  }
}