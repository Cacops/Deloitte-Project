using Newtonsoft.Json;
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
        String beer = Functions.RF("favBeer", "");
        String timesPerWeekString = Functions.RF("drinkPeriod", "") == "" ? "-1" : Functions.RF("drinkPeriod", "");
        Answer answer = new Answer();
        int timesPerWeek = 0;

        int.TryParse(timesPerWeekString, out timesPerWeek);

        if (Functions.RF("getAdvice", "false") == "true")
        {

            if (timesPerWeek < 0)
            {
                answer.Message = "We cannot help you with drinking " + beer + ", if you do not post us info about period of drinking.";
            }
            else if (timesPerWeek < 3)
            {
                answer.Message = "You should drink " + beer + " more than " + timesPerWeek + "x per week. Beer has great vitamins!";
            }
            else
            {
                answer.Message = "You should not really drink " + beer + " " + timesPerWeek + "x per week. It is not healthy!";
            }

            answer.Success = true;
            answer.Title = "Advice for this day";

            string json = JsonConvert.SerializeObject(answer);

            Response.Write(json);
            Response.End();

        }
        else if (Functions.RF("getBeer", "false") == "true")
        {

            if (timesPerWeek < 0)
            {
                answer.Message = "We cannot deliver you " + beer + ", if you do not post us info about how much do you drink.";
            }
            else if(timesPerWeek == 0)
            {
                answer.Message = "We won't deliver you " + beer + " because you don't drink any.";
            }
            else
            {
                answer.Message = "We will deliver " + beer + " " + timesPerWeek + "x per week. Thank you for order!";
            }

            answer.Success = true;
            answer.Title = "Beer delivery";

            string json = JsonConvert.SerializeObject(answer);

            Response.Write(json);
            Response.End();

        }


    }
}

public class Answer
{
    public bool Success { get; set; }
    public String Title { get; set; }
    public String Message { get; set; }
}