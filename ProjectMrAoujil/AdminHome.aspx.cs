using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminHome : System.Web.UI.Page
{
    DataTable dttable_regester = new DataTable();
    DataTable dttable_message = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Session["admin"] != null)
            {
                Admin admin = (Admin)Session["admin"];

            }
            else
            {
                if (Request.Cookies["login"] != null && Request.Cookies["passeword"] != null)
                {
                    Admin admin = Admin.Authentification(Request.Cookies["login"].Value, Request.Cookies["passeword"].Value);
                    if (admin != null)
                    {

                        Response.Redirect("AdminHome.aspx");
                    }
                    else
                    {
                        Response.Redirect("LoginAdmin.aspx");
                    }

                }
                Response.Redirect("LoginAdmin.aspx");
            }


            Usercs _user = new Usercs();

            Repeater_register.DataSource = _user.showRecentRegestroment();
            Repeater_register.DataBind();

            Contact _contact = new Contact();
            Repeater_message.DataSource = _contact.Afficher4Message();
            Repeater_message.DataBind();

        }
    }
}