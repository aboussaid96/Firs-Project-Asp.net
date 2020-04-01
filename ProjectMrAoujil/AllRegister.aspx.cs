using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AllRegister : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Usercs user = new Usercs();
        Repeaterregister.DataSource = user.showallRecentRegestroment();
        Repeaterregister.DataBind();
    }
}