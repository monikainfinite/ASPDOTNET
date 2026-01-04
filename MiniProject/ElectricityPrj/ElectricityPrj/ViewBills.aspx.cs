using ElectricityPrj.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElectricityPrj
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null)
            {
                Response.Redirect("LoginForm.aspx");
            }

        }

        protected void btndisplay_Click(object sender, EventArgs e)
        {
            try
            {
                int n = int.Parse(txtNum.Text);
                if (n <= 0)
                {
                    lblMsg.Text = "enter valid number";
                    return;
                }

                ElectricityBoard board = new ElectricityBoard();
                List<ElectricityBill> list = board.Generate_N_BillDetails(n);

                if (list.Count == 0)
                {
                    lblMsg.Text = "No records found";
                }
                else
                {
                    lblMsg.Text = "";
                }

                GridView1.DataSource = list;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddBill.aspx");
        }
    }
}
