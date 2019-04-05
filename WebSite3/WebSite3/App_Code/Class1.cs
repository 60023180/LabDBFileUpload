using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    public string name;
    public string SUM(int x, int y)
    {
        return string.Format("{0} : {1}", name, (x + y).ToString());
    }
    public string SUM(int x, int y, int z)
    {
        return string.Format("{0} : {1}", name, (x + y + z).ToString());
    }
}