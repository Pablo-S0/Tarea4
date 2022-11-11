using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea4
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BIngresar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
        }

        protected void BEdades_Click(object sender, EventArgs e)
        {
            porcentajeEdades();
        }

        protected void BGenero_Click(object sender, EventArgs e)
        {
            porcentajeGenero();
        }

        protected void BBuscar_Click(object sender, EventArgs e)
        {
           
        }

        protected void BAsegurados_Click(object sender, EventArgs e)
        {
            porcentajeAsegurados();
        }


        protected void porcentajeGenero()
        {
            float suma = 0; int contM = 0; int contF = 0;
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["HospitalConnectionString3"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select * from Paciente ", conexion);
            SqlDataReader registro = comando.ExecuteReader();

            while (registro.Read())
            {
                if (registro["genero"].Equals("F") || registro["genero"].Equals("f"))
                {
                    suma++;
                    contF++;
                }

                if (registro["genero"].Equals("M") || registro["genero"].Equals("m"))
                {
                    suma++;
                    contM++;
                }
            }

            Label1.Text = "El porcentaje de mujeres es de: " + ((contF * 100) / suma).ToString() + "%"
                + "\nEl porcentaje de hombres es de: " + ((contM * 100) / suma).ToString() + "%";

            conexion.Close();
        }

        protected void porcentajeEdades()
        {
            float suma = 0; int contN = 0; int contJ = 0; int contA = 0;
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["HospitalConnectionString3"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select * from Paciente ", conexion);
            SqlDataReader registro = comando.ExecuteReader();

            while (registro.Read())
            {
                if (float.Parse(registro["edad"].ToString()) <= 13)
                {
                    suma++;
                    contN++;
                }

                if (float.Parse(registro["edad"].ToString()) > 13 && float.Parse(registro["edad"].ToString()) < 31)
                {
                    suma++;
                    contJ++;
                }

                if (float.Parse(registro["edad"].ToString()) > 30)
                {
                    suma++;
                    contA++;
                }
            }

            Label1.Text = "El porcentaje de ninos es de: " + ((contN * 100) / suma).ToString() + "%"
                + "\nEl porcentaje de jovenes es de: " + ((contJ * 100) / suma).ToString() + "%"
                 + "\nEl porcentaje de adultos es de: " + ((contA * 100) / suma).ToString() + "%";

            conexion.Close();
        }

        protected void porcentajeAsegurados()
        {
            float suma = 0; int contS = 0; int contN = 0;
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["HospitalConnectionString3"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select * from Paciente ", conexion);
            SqlDataReader registro = comando.ExecuteReader();

            while (registro.Read())
            {
                if (registro["Seguro"].ToString() == "True")
                {
                    suma++;
                    contS++;
                }

                if (registro["Seguro"].ToString().Equals("False"))
                {
                    suma++;
                    contN++;
                }

            }

            Label1.Text = "El porcentaje de personas con seguro es de: " + ((contS * 100) / suma).ToString() + "%"
                + "\nEl porcentaje de personas sin seguro es de: " + ((contN * 100) / suma).ToString() + "%";

            conexion.Close();
        }

        
    }
}