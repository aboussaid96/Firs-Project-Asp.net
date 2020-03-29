using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact01 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_send_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            Contact contact = new Contact(txtsername.Text, txt_mail.Text, txtmessage.Text);
            contact.InsertMessage();
        }
       

    }
}