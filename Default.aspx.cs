using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Functions.RQ("ajax", "0") == "1")
        {
            Response.Write("Success");
            Response.End();
        }
    }
}