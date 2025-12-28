using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ElectricityPrj.Models
{
    public class ElectricityBoard
    {
        DBHandler db = new DBHandler();

        public void CalculateBill(ElectricityBill ebill)
        {
            int units = ebill.UnitsConsumed;
            double amount = 0;

            if (units <= 100)
            {
                ebill.BillAmount = 0;
                return;
            }

            if (units > 100)
            {
                int temp = units <= 300 ? (units - 100) : 200;
                amount = amount + (temp * 1.5);
            }

            if (units > 300)
            {
                int temp = units <= 600 ? (units - 300) : 300;
                amount = amount + (temp * 3.5);
            }

            if (units > 600)
            {
                int temp = units <= 1000 ? (units - 600) : 400;
                amount = amount + (temp * 5.5);
            }

            if (units > 1000)
            {
                amount += (units - 1000) * 7.5;
            }

            ebill.BillAmount = amount;
        }

        public void AddBill(ElectricityBill ebill)
        {
            SqlConnection con = db.GetConnection();
            SqlCommand cmd = new SqlCommand(
                "insert into ElectricityBill (consumer_number, consumer_name, units_consumed, bill_amount) " +
                "values(@custnum, @custname, @units, @amount)", con);

            cmd.Parameters.AddWithValue("@custnum", ebill.ConsumerNumber);
            cmd.Parameters.AddWithValue("@custname", ebill.ConsumerName);
            cmd.Parameters.AddWithValue("@units", ebill.UnitsConsumed);
            cmd.Parameters.AddWithValue("@amount", ebill.BillAmount);

            con.Open();
            cmd.ExecuteNonQuery();
        }

        public List<ElectricityBill> Generate_N_BillDetails(int num)
        {
            List<ElectricityBill> list = new List<ElectricityBill>();
            SqlConnection con = db.GetConnection();

            SqlCommand cmd = new SqlCommand(
                "select top (@n) consumer_number, consumer_name, units_consumed, bill_amount " +
                "from ElectricityBill order by bill_date desc", con);

            cmd.Parameters.AddWithValue("@n", num);

            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                ElectricityBill eb = new ElectricityBill();
                eb.ConsumerNumber = dr["consumer_number"].ToString();
                eb.ConsumerName = dr["Consumer_name"].ToString();
                eb.UnitsConsumed = int.Parse(dr["units_consumed"].ToString());
                eb.BillAmount = double.Parse(dr["bill_amount"].ToString());
                list.Add(eb);
            }

            dr.Close();
            con.Close();

            return list;
        }
    }

}