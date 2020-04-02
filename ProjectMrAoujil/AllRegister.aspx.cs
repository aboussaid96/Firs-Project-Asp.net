using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AllRegister : System.Web.UI.Page
{
    public static SqlConnection cn = new SqlConnection(@"Data Source=ABOUSSAII\SQLEXPRESS;Initial Catalog=golf_project;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        bindEmployeeDetailsToRepeater();
    }
    public void bindEmployeeDetailsToRepeater()
    {
        Usercs user = new Usercs();
        Repeaterregister.DataSource = user.showallRecentRegestroment();
        Repeaterregister.DataBind();
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        //====== Here we use switch state to distinguish which link button is clicked based 
        //====== on command name supplied to the link button.
        switch (e.CommandName)
        {
            //==== This case will fire when link button placed
            //==== inside repeater having command name "Delete" is clicked.

            case ("Delete"):
                //==== Getting id of the selelected record(We have passed on link button's command argument property).
                int id = Convert.ToInt32(e.CommandArgument);

                //==== Call delete method and pass id as argument.
                deleteEmployee(id);

                break;

            //==== This case will fire when link button placed
            //==== inside repeater having command name "Edit" is clicked.
            case ("Edit"):

                //==== Getting id of the selelected record(We have passed on link button's command argument property).
                // id = Convert.ToInt32(e.CommandArgument);

                //==== Call delete method and pass id as argument.
                //bindEmployeeDetailToEdit(id);

                break;

        }
    }
    public void deleteEmployee(int id)
    {


        //======= Delete Query.
        string cmdText = "DELETE FROM Registrations WHERE id_register=@Id";

        //====== Providning information to SQL command object about which query to 
        //====== execute and from where to get database connection information.
        SqlCommand cmd = new SqlCommand(cmdText, cn);

        //===== Adding parameters/Values.
        cmd.Parameters.AddWithValue("@Id", id);

        //===== To check current state of the connection object. If it is closed open the connection
        //===== to execute the insert query.
        if (cn.State == ConnectionState.Closed)
        {
            cn.Open();
        }

        //===== Execute Query.
        cmd.ExecuteNonQuery();

        //===== close the connection.
        cn.Close();

        //===== Bind data to repeater so that repeater will display updated data.
        bindEmployeeDetailsToRepeater();
    }

}