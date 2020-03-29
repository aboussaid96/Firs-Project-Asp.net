using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Schedule01 : System.Web.UI.Page
{
    DataTable dttable29 = new DataTable();
    DataTable dttable30 = new DataTable();
    DataTable dttable01 = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        Contact cn = new Contact();

        dttable29=cn.AfficherMessage("29/03/2020");

        dttable30 = cn.AfficherMessage("30/03/2020");
        repeter29.DataSource = dttable29;
        repeter29.DataBind();    
       /*branch */
    }
}