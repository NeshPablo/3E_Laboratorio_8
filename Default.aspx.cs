using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace _3E_Laboratorio_8
{
    public partial class _Default : Page
    {
        List<Dato01> dato01s = new List<Dato01>();
        void leerDatos()
        {
            FileStream stream = new FileStream("Alumno.txt", FileMode.OpenOrCreate, FileAccess.Read);
            StreamReader reader = new StreamReader(stream);

            while (reader.Peek() > -1)
            {
                Dato01 dato01 = new Dato01();
                dato01.NombreA = reader.ReadLine();
                dato01.Carne = Convert.ToInt16(reader.ReadLine());

                dato01s.Add(dato01);
            }
            reader.Close();
        }
        void CargarGrid()
        {
            GridView1.DataSource = null;
            GridView1.DataSource = dato01s;
           

            
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btn_insert_Click(object sender, EventArgs e)
        {
            leerDatos();
            CargarGrid();
        }
    }
}