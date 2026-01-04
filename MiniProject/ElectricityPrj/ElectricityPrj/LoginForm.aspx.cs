using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElectricityPrj
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUser.Text == "admin" && txtPass.Text == "admin123")
            {
                Session["Admin"] = txtUser;
                Response.Redirect("AddBill.aspx");
            }
            else
            {
                lblmsg.Text = "Invalid Username and Password";
            }

        }
    }
}