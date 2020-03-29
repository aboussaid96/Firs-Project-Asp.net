using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;


public partial class RegistrePage01 : System.Web.UI.Page
{
    //SqlConnection _connection = new SqlConnection(@"Data Source=ABOUSSAII\SQLEXPRESS;Initial Catalog=golf_project;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        labelerreur.Visible = false;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //SqlCommand _command = new SqlCommand();
        if (IsValid)
        {
            Usercs user;
           /*verifier datatable*/
            //label1.Text = new Usercs().getUserByMail(txt_mail.Text).Rows.Count.ToString();
            if (new Usercs().getUserByMail(txt_mail.Text).Rows.Count == 0)
            {
                if (FileUpload1.HasFile)
                {
                    if (FileUpload1.PostedFile.ContentType.ToLower() == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png")
                    {
                        string image = "ImageUser/" + Session.SessionID + getstring() + "." + Path.GetExtension(FileUpload1.PostedFile.FileName);


                        FileUpload1.SaveAs(Server.MapPath(image));
                        user = new Usercs(TextBoxusername.Text, txt_phonenumber.Text, txt_job.Text, txt_mail.Text, TextBox_password.Text, image);
                        string confirmail = " Hello: " + TextBoxusername.Text + " Thanks for signing up to Golf Academy! To set up your account" + txt_mail.Text;
                        if (user.insertUser() > 0)
                        {
                            sendMail(txt_mail.Text, confirmail);
                        }
                    }
                    else
                    {
                        labelerreur.Visible = true;
                        labelerreur.Text = "extension for image invalid  ";
                    }

                }
                
            }
            else
            {
                labelerreur.Visible = true;
                labelerreur.Text = "the email is existing ";
            }
        }

    }
    public string getstring()//pour nom image
    {
        string str = DateTime.Now.ToString().Replace("/","").Replace(":","").Replace(" ","");
        str = str.Substring(0, str.Length - 2);
        return str;
    }
    public void sendMail(string toGmail,string bodyMessage)
    {
        System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
        mail.To.Add(toGmail);
        //email de emeteur , et title 
        mail.From = new MailAddress("ho703843@gmail.com", "Golf academy Confirence", System.Text.Encoding.UTF8);
        mail.Subject = " insription avec succes ";
        mail.SubjectEncoding = System.Text.Encoding.UTF8;
        mail.Body = bodyMessage;
        mail.BodyEncoding = System.Text.Encoding.UTF8;
        mail.IsBodyHtml = true;
        mail.Priority = MailPriority.High;
        SmtpClient client = new SmtpClient();
        client.Credentials = new System.Net.NetworkCredential("ho703843@gmail.com","ab-_-123");
        //client.UseDefaultCredentials = true;
        client.Port = 587;
        client.Host = "smtp.gmail.com";
        client.EnableSsl = true;
        client.Send(mail);
        //try
        //{
           
        //    Page.RegisterStartupScript("UserMsg", "<script>alert('Successfully Send...')</script>");
        //}
        //catch (Exception ex)
        //{
        //    Exception ex2 = ex;
        //    string errorMessage = string.Empty;
        //    while (ex2 != null)
        //    {
        //        errorMessage += ex2.ToString();
        //        ex2 = ex2.InnerException;
        //    }
        //    Page.RegisterStartupScript("UserMsg", "<script>alert('Sending Failed...')</script>");
        //}
    }

   
}