using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHome : System.Web.UI.Page
{
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
        }
    }
}