using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ValidationPrj
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Response.Write("Thanks for registration");
            }
            else
            {
                Response.Write("please correct the form details before submission");
            }
        }
    }
}