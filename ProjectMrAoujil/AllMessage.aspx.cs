using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AllRegister : System.Web.UI.Page
{
    
    DataTable dttable = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        Contact _contact = new Contact();

        Repeater_message.DataSource = _contact.affichertousMessage();
        Repeater_message.DataBind();
    }
}