using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


    public class Admin
    {
        static SqlConnection cn = new SqlConnection(@"Data Source=ABOUSSAII\SQLEXPRESS;Initial Catalog=golf_project;Integrated Security=True");

        private string _logine;
        private string _passeword;
        private string _Nom;
        private string _Prenom;

        public Admin() { }
        
        public string logine { get { return _logine; } set { _logine = value; } }
        public string passeword { get { return _passeword; } set { _passeword = value; } }
        public string Nom { get { return _Nom; } set { _Nom = value; } }
        public string Prenom { get { return _Prenom; } set { _Prenom = value; } }

        public Admin(string log, string pass, string nom, string prenom)
        {
            _logine = log;
            _passeword = pass;
            _Nom = nom;
            _Prenom = prenom;
        }
        public static Admin Authentification(string log, string pass)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from Admin where Login_admin=@log and password_admin=@pass", cn);
            SqlParameter[] Par = new SqlParameter[2];
            Par[0] = new SqlParameter("@log", log);
            Par[1] = new SqlParameter("@pass", pass);
            da.SelectCommand.Parameters.AddRange(Par);
            DataSet ds = new DataSet();
            da.Fill(ds, "admin");
            if (ds.Tables["admin"].Rows.Count != 0)
            {
                return new Admin(ds.Tables["admin"].Rows[0][0].ToString(), ds.Tables["admin"].Rows[0][1].ToString(), ds.Tables["admin"].Rows[0][2].ToString(), ds.Tables["admin"].Rows[0][3].ToString());
            }
            else
            {
                return null;
            }
        }
    }
