using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Description résumée de Contact
/// </summary>
public class Contact
{
    public static SqlConnection _connection = new SqlConnection(@"Data Source=ABOUSSAII\SQLEXPRESS;Initial Catalog=golf_project;Integrated Security=True");
    public SqlCommand _command=new SqlCommand();

    private string fullName_contact;
    private string login_contact;
    private string message__contact;


    public string FullName_contact
    {
        get { return fullName_contact; }
        set { fullName_contact = value; }
    }

    public string Login_contact
    {
        get { return login_contact; }
        set { login_contact = value; }
    }
    public string Message__contact
    {
        get { return message__contact; }
        set { message__contact = value; }
    }
    public Contact()
    {

    }
    public Contact(string FULLNAME,string LOGIN,string MESSAGE)
    {
        this.FullName_contact = FULLNAME;
        this.Login_contact = LOGIN;
        this.Message__contact = MESSAGE;
    }

    public void InsertMessage()
    {
        _command.Connection = _connection;
        _command.CommandText = "insert into Contact values (@fullname,@login,@message,@datemessage)";
        SqlParameter[] parm = new SqlParameter[4];
        parm[0] = new SqlParameter("@fullname", FullName_contact);
        parm[1] = new SqlParameter("@login", Login_contact);
        parm[2] = new SqlParameter("@message", Message__contact);
        parm[3] = new SqlParameter("@datemessage", DateTime.Now.ToString("MM/dd/yyyy"));

        _command.Parameters.AddRange(parm);
       
        _connection.Open();
        _command.ExecuteNonQuery();
       
        _connection.Close();

    }
    public DataTable AfficherMessage(string Date_event)
    {
        SqlDataAdapter dtadapter = new SqlDataAdapter("select * from Contact where Date_contact=@dtevent", _connection);
        dtadapter.SelectCommand.Parameters.Add(new SqlParameter("@dtevent", Date_event));
        DataSet ds = new DataSet();
        dtadapter.Fill(ds);
        return ds.Tables[0];
    }

    public DataTable Afficher4Message()
    {
        SqlDataAdapter da = new SqlDataAdapter("select top 4* from Contact where Date_contact=@date", _connection);
        da.SelectCommand.Parameters.Add(new SqlParameter("@date", DateTime.Now.ToString("MM/dd/yyyy")));
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0];
    }

    public DataTable affichertousMessage()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from Contact ", _connection);
       
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0];
    }
}