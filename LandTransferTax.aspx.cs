using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Oksana_4._5._2
{
    public partial class LandTransferTax : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void calc_btn_Click(object sender, EventArgs e)
        {
            double result = 0;
            double amount = purchaseAmt.Text.Equals("") ? 0 : Double.Parse(purchaseAmt.Text);
            if (amount >= 55000)
            {
                result += 55000 * 0.005;
            }
            if (amount > 55000)
            {
                result += 195000 * 0.01;
            }
            if (amount > 250000)
            {
                result += 150000 * 0.015;
            }
            if (amount > 400000)
            {
                result += (amount - 400000) * 0.02;
            }
            if (firstBuyer.Checked)
            {
                result -= 4000;
            }
            if (livesinToronto.Checked)
            {
                result += 55000 * 0.005;
                if (amount >= 55000)
                {
                    result += (400000 - 55000) * 0.01;
                }
                if (amount > 400000)
                {
                    result += (amount - 400000) * 0.02;
                }
            }

            landTransferTax.Text = result < 0 ? "0" : "$" + string.Format("{0:#,###0}", result);
        }
    }
}