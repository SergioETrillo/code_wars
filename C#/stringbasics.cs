using System;

public class Kata
{
  public static string[] GetUserIds(string s)
  {
    string[] UserIDs = SplitIt(s);
    FormatIDs(UserIDs);

    return UserIDs;
  }

  private static string[] SplitIt(string s)
  {
    char[] sep = {','};
    string[] UserIDs;
    UserIDs = s.Split(sep);
    return UserIDs;
  }

  private static void FormatIDs(string[] UserIDs)
  {
      for (int i = 0; i < UserIDs.Length; i++)
      {
          UserIDs[i] = UserIDs[i].Trim();
          UserIDs[i] = UserIDs[i].ToLower();
          UserIDs[i] = UserIDs[i].Replace("#", "");
          UserIDs[i] = UserIDs[i].Substring(3);
          Console.WriteLine("{0}", UserIDs[i]);
            }
        }
}