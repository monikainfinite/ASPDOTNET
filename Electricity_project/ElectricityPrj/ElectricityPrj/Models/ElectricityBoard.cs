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
                "insert into ElectricityBill (consumer_number, consumer_name, units_consumed, bill_amount,bill_date,bill_month,bill_year) " +
                "values(@custnum, @custname, @units, @amount,@date,@month,@year)", con);

            cmd.Parameters.AddWithValue("@custnum", ebill.ConsumerNumber);
            cmd.Parameters.AddWithValue("@custname", ebill.ConsumerName);
            cmd.Parameters.AddWithValue("@units", ebill.UnitsConsumed);
            cmd.Parameters.AddWithValue("@amount", ebill.BillAmount);
            cmd.Parameters.AddWithValue("@date", ebill.BillDate);
            cmd.Parameters.AddWithValue("@month", ebill.BillMonth);
            cmd.Parameters.AddWithValue("@year", ebill.BillYear);
            con.Open();
            cmd.ExecuteNonQuery();
        }
        public bool IsConsumerValid(string consumerNum,string consumerName)
        {
            SqlConnection con = db.GetConnection();
            SqlCommand cmd = new SqlCommand("select distinct consumer_name from ElectricityBill where consumer_number=@num", con);
            cmd.Parameters.AddWithValue("@num", consumerNum);
            con.Open();
            var result = cmd.ExecuteScalar();
            if (result == null)
                return true;
            return result.ToString().ToLower() == consumerName.ToLower();
        }
        public bool IsDuplicateMonthlyBill(string consumerNum,int month,int year)
        {
            SqlConnection con = db.GetConnection();
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM ElectricityBill "+
          "WHERE consumer_number = @num AND bill_month = @m AND bill_year = @y", con);


            cmd.Parameters.AddWithValue("@num", consumerNum);
            cmd.Parameters.AddWithValue("@m", month);
            cmd.Parameters.AddWithValue("@y", year);
            con.Open();
            int count = (int)cmd.ExecuteScalar();
            con.Close();
            return count > 0;
        }
        public double GetLastMonthBill(string consumerNum)
        {
            SqlConnection con = db.GetConnection();
            SqlCommand cmd = new SqlCommand("select top 1 bill_amount from ElectricityBill where consumer_number=@num order by bill_date desc", con);
            cmd.Parameters.AddWithValue("@num", consumerNum);

            con.Open();
            object result = cmd.ExecuteScalar();
            con.Close();
            if (result == null)
                return -1;
         return Convert.ToDouble(result);

        }
        public List<ElectricityBill> Generate_N_BillDetails(int num)
        {
            List<ElectricityBill> list = new List<ElectricityBill>();
            SqlConnection con = db.GetConnection();

            SqlCommand cmd = new SqlCommand(
                "select top (@n) consumer_number, consumer_name, units_consumed, bill_amount,bill_date " +
                "from ElectricityBill order by created_date desc", con);

            cmd.Parameters.AddWithValue("@n", num);

            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                ElectricityBill eb = new ElectricityBill();
                eb.ConsumerNumber = dr["consumer_number"].ToString();
                eb.ConsumerName = dr["consumer_name"].ToString();
                eb.UnitsConsumed = int.Parse(dr["units_consumed"].ToString());
                eb.BillAmount = double.Parse(dr["bill_amount"].ToString());
                eb.BillDate = Convert.ToDateTime(dr["bill_date"]);
                list.Add(eb);
            }

            dr.Close();
            con.Close();

            return list;
        }
    }

}