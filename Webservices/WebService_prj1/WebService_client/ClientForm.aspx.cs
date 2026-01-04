using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebService_client
{
    public partial class ClientForm : System.Web.UI.Page
    {  
        InfiniteReference.Web_Infinite_ServicesSoapClient client=new InfiniteReference.Web_Infinite_ServicesSoapClient();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnhello_Click(object sender, EventArgs e)
        {
            lblmsg.Text = client.HelloWorld();
        }

        protected void btnSayhello_Click(object sender, EventArgs e)
        {
            lblmsg.Text = client.SayHello(txtname.Text);
        }

        protected void btnsnq_Click(object sender, EventArgs e)
        {
            lblmsg.Text = client.Squareroot(Convert.ToSingle(txtfnum.Text)).ToString();
        }

        protected void btnsum_Click(object sender, EventArgs e)
        {
            lblmsg.Text=client.sumOfNumbers(Convert.ToSingle(txtnum1.Text), Convert.ToSingle(txtnum2.Text)).ToString();
        }
    }
}