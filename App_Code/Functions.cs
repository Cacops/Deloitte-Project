using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Contains all needed functions
/// </summary>
public class Functions
{
    /// <summary>
    /// Returns value of key from query. if there is no, return default
    /// </summary>
    public static string RQ(string name, string def)
    {
        return HttpContext.Current.Request.QueryString[name] ?? def;
    }

    /// <summary>
    /// Returns value of key from form. if there is no, return default
    /// </summary>
    public static string RF(string name, string def)
    {
        return HttpContext.Current.Request.Form[name] ?? def;
    }
}