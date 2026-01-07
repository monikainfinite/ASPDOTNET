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
                ebill.BillDate=Convert.ToDateTime(txtBillDate.Text);
               
               
                string dayres = validator.ValidateBillDate(ebill.BillDate);
                
                    if (dayres != "valid")
                    {
                        lblmsg.Text = dayres;   
                        return;
                    }
                
                if(!board.IsConsumerValid(ebill.ConsumerNumber,ebill.ConsumerName))
                {
                    lblmsg.Text = "This consumer number belongs to another customer!";
                    return;
                }
                if (board.IsDuplicateMonthlyBill(ebill.ConsumerNumber, ebill.BillMonth, ebill.BillYear))
                {
                    lblmsg.Text = "bill already added";
                    return;
                }
                double lastAmount = board.GetLastMonthBill(ebill.ConsumerNumber);
                if (lastAmount == -1)
                    lblLastMonthBill.Text = "no bills paid yet";
                else
                    lblLastMonthBill.Text = lastAmount.ToString();
                board.CalculateBill(ebill);
                board.AddBill(ebill);
                lblResult.Text = ebill.ConsumerNumber + " " + ebill.ConsumerName + " " + ebill.UnitsConsumed  + " " + ebill.BillAmount + " "+ebill.BillDate;
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

        protected void btnReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("BillReport.aspx");
        }
    }
    
}