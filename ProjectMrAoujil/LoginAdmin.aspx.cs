
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Admin admin = Admin.Authentification(txt_mail.Text, TextBox_password.Text);
        if (admin != null)
        {
            Session["admin"] = admin;

            Response.Redirect("AdminHome.aspx");
            if (CheckBox1.Checked)
            {
                Response.Cookies.Add(new HttpCookie("login", admin.logine));
                Response.Cookies.Add(new HttpCookie("passeword", admin.passeword));
                Response.Cookies["login"].Expires = DateTime.Now.AddDays(2);
                Response.Cookies["passeword"].Expires = DateTime.Now.AddDays(2);
            }

        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Login/Mot de passe invalide !!!";
        }
    }
}