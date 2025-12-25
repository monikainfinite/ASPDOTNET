using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //view state object is not having any valid reference and hence exception
            lblmsg.Text = "Your Name is : " + ViewState["uname"].ToString() +
                 "and your password is : " + ViewState["pass"].ToString();

        }
    }
}