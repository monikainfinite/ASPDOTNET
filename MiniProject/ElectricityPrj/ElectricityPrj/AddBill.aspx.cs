using ElectricityPrj.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElectricityPrj
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        static int totalBills = 0;
        static int currentCount = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null)
            {
                Response.Redirect("LoginForm.aspx");
            }
        }

        protected void btnAddBill_Click(object sender, EventArgs e)
        {
            try
            {
                if (currentCount == 0)
                {
                    totalBills = int.Parse(txttotal.Text);
                    if (totalBills < 0)
                    {
                        lblmsg.Text = "Enter a valid number of bills";
                        return;
                    }
                    txttotal.Enabled = false;
                }

                ElectricityBill ebill = new ElectricityBill();
                BillValidator validator = new BillValidator();
                ElectricityBoard board = new ElectricityBoard();

                ebill.ConsumerNumber = txtConsumerNo.Text;
                ebill.ConsumerName = txtConsumerName.Text;

                int units = int.Parse(txtUnits.Text);
                string res = validator.ValidateUnitsConsumed(units);
                if (res != "valid")
                {
                    lblmsg.Text = res;
                    return;
                }

                ebill.UnitsConsumed = units;
                board.CalculateBill(ebill);
                board.AddBill(ebill);

                currentCount++;
                lblmsg.Text = "Bill added sucessfully .";

                txtConsumerNo.Text = "";
                txtConsumerName.Text = "";
                txtUnits.Text = "";

                if (currentCount == totalBills)
                {
                    lblmsg.Text = "All bills added";
                    currentCount = 0;
                    totalBills = 0;
                    txttotal.Enabled = true;
                    txttotal.Text = "";
                }
            }
            catch (FormatException ex)
            {
                lblmsg.Text = ex.Message;
            }
            catch (Exception ex)
            {
                lblmsg.Text = "error" + ex.Message;
            }
        }

        protected void btnGoRetrieve_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewBills.aspx");
        }
    }
    
}