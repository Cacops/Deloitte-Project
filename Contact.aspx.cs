using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String name = Functions.RF("contactName", "");
        String email = Functions.RF("contactEmail", "");
        String mobile = Functions.RF("contactMobile", "");
        String message = Functions.RF("contactText", "");
        Answer answer = new Answer();

        if (Functions.RF("sendContactMessage", "false") == "true")
        {
            if (name == "" || email == "" || message == "")
            {
                answer.Message = "You didn't fill everything in the form. Please check, if you have filled everything.";
                answer.Success = true;
                answer.Title = "Message failed!";
            }
            else
            {
                answer.Message = "Thank you " + name + " for your message. We will answer to your email " + email + " as soon as possible.";
                answer.Success = true;
                answer.Title = "Message send succesfully!";
            }


            string json = JsonConvert.SerializeObject(answer);

            Response.Write(json);
            Response.End();
        }
    }


    public class Answer
    {
        public bool Success { get; set; }
        public String Title { get; set; }
        public String Message { get; set; }
    }
}
