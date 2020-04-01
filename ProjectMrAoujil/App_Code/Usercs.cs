using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Description résumée de Usercs
/// </summary>
public class Usercs
{
    public static SqlConnection _connection = new SqlConnection(@"Data Source=ABOUSSAII\SQLEXPRESS;Initial Catalog=golf_project;Integrated Security=True");
    public SqlCommand _command;

    private string fullName;
    private string login;
    private string password;
    private string numberPhone;
    private string job;
    private string image;
    private DateTime dateRegister;


    public string FullName
    {
        get { return fullName; }
        set { fullName = value; }
    }

    public string Login
    {
        get { return login; }
        set { login = value; }
    }
    public string Password
    {
        get { return password; }
        set { password = value; }
    }
    public string NumberPhone
    {
        get { return numberPhone; }
        set { numberPhone = value; }
    }
    public string Job
    {
        get { return job; }
        set { job = value; }
    }
    public string Image
    {
        get { return image; }
        set { image = value; }
    }

    public DateTime DateRegister
    {
        get { return dateRegister; }
        set { dateRegister = value; }
    }
    public Usercs()
    { }
    public Usercs(string FULLNAME,string PHONE_NUMBER, string JOB,string LOGIN,string PASSWORD,string IMAGE)
    {
        this.FullName = FULLNAME;
        this.NumberPhone = PHONE_NUMBER;
        this.Job = JOB;
        this.Login = LOGIN;
        this.Password = PASSWORD;
        this.Image = IMAGE;
       
    }
    public int insertUser()
    {
        int nb;
        string requete = "insert into Registrations values(@fullname,@login,@password,@numberphone,@job,@image,@date_regiter)";
        _command= new SqlCommand(requete, _connection);
        SqlParameter[] pra = new SqlParameter[7];
        pra[0] = new SqlParameter("@fullname", FullName);
        pra[1] = new SqlParameter("@login", Login);
        pra[2] = new SqlParameter("@password", Password);
        pra[3] = new SqlParameter("@numberphone", NumberPhone);
        pra[4] = new SqlParameter("@job", Job);
        pra[5] = new SqlParameter("@image", Image);
        pra[6] = new SqlParameter("@date_regiter", DateTime.Now.ToString("MM/dd/yyyy"));

        _command.Parameters.AddRange(pra);
        _connection.Open();
        
       nb= _command.ExecuteNonQuery();
        
        _connection.Close();

        return nb;
    }
    public DataTable getUserByMail(string email)
    {
       
        SqlDataAdapter da = new SqlDataAdapter("select * from Registrations  where login_register=@login", _connection );
        da.SelectCommand.Parameters.Add(new SqlParameter("@login", email));
        DataSet ds = new DataSet();
        da.Fill(ds, "user");

       
            return ds.Tables["user"];
       
    }
    public DataTable showRecentRegestroment()
    {
        SqlDataAdapter da = new SqlDataAdapter(" select top 4 * from Registrations where Date_register=@date", _connection);
        da.SelectCommand.Parameters.Add(new SqlParameter("@date", DateTime.Now.ToString("MM/dd/yyyy")));
        DataSet ds = new DataSet();
        da.Fill(ds, "user");

        return ds.Tables["user"];
    }

    public DataTable showallRecentRegestroment()
    {
        SqlDataAdapter da = new SqlDataAdapter(" select  * from Registrations ", _connection);
        
        DataSet ds = new DataSet();
        da.Fill(ds, "user");

        return ds.Tables["user"];
    }

}