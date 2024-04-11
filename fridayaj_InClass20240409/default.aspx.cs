using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace fridayaj_InClass20240409
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // This should only load once when the page is initially loaded in the browser
            if (!IsPostBack)
            lbFruits.Items.Add("Strawberry");
        }

        protected void Select_Fruit(object sender, EventArgs e)
        {
  
            lblChosenFruit.Text = lbFruits.SelectedValue.ToString();

        }
    }   // I need an event that will run when the user, in their browser, selects a fruit
}       // event driven programming, our event is the user selected an item from the list box