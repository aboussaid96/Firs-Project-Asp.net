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
    DataTable dttable02 = new DataTable();
  
    protected void Page_Load(object sender, EventArgs e)
    {
        Contact cn = new Contact();

        dttable29=cn.AfficherMessage("29/03/2020");
        repeter29.DataSource = dttable29;
        repeter29.DataBind();
        /*lier repetaer 2 avec data source */
        dttable30 = cn.AfficherMessage("30/03/2020");
        Repeater30.DataSource = dttable30;
        Repeater30.DataBind();

        /*lier repetaer 2 avec data source */
        dttable01 = cn.AfficherMessage("01/04/2020");
        Repeater01.DataSource = dttable01;
        Repeater01.DataBind();
        /*branch */

        dttable02= cn.AfficherMessage("04/01/2020");
        Repeater2.DataSource = dttable02;
        Repeater2.DataBind();

    }
}