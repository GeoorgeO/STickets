using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using CapaDeDatos;

namespace SystemTickets
{
    public partial class Frm_Sel_ActividadPadre : DevExpress.XtraEditors.XtraForm
    {

        public TreeNode NodoPadre;

        public Frm_Sel_ActividadPadre()
        {
            InitializeComponent();
        }

        private void agregarNodo(string Texto)
        {
            treeView1.Nodes.Add(Texto);
        }
        private void agregarSubNodo(TreeNode NodoPadre, string Texto)
        {
            NodoPadre.Nodes.Add(Texto);
        }

        private void CargarPantallas()
        {
            CLS_CatActividades sel = new CLS_CatActividades();
            sel.MtdSeleccionarActividades();
            if (sel.Exito)
            {
                int r;

                for (r = 0; r < sel.Datos.Rows.Count; r++)
                {
                    if (sel.Datos.Rows[r][2].ToString() == String.Empty || sel.Datos.Rows[r][2].ToString().Trim().Length == 0)
                    {
                        agregarNodo(sel.Datos.Rows[r][0].ToString() + " - " + sel.Datos.Rows[r][1].ToString());
                    }
                    else
                    {
                        RecorrerTree(treeView1, sel.Datos, r);
                    }
                }

            }
        }

        private void PrintRecursive(TreeNode treeNode, DataTable da, int r)
        {
            // Print the node.  
            System.Diagnostics.Debug.WriteLine(treeNode.Text);
            //XtraMessageBox.Show(da.Rows[r][2].ToString().Trim() + " == " + treeNode.Text.Substring(0, treeNode.Text.Trim().IndexOf("-") - 1));
            if (da.Rows[r][2].ToString().Trim() == treeNode.Text.Substring(0, treeNode.Text.Trim().IndexOf("-") - 1))
            {
                agregarSubNodo(treeNode, da.Rows[r][0].ToString() + " - " + da.Rows[r][1].ToString());

            }
            else
            {
                foreach (TreeNode tn in treeNode.Nodes)
                {
                    PrintRecursive(tn, da, r);
                }
            }
            // Print each node recursively.  

        }

        // Call the procedure using the TreeView.  
        private void RecorrerTree(TreeView treeView, DataTable da, int r)
        {
            // Print each node recursively.  
            TreeNodeCollection nodes = treeView.Nodes;
            foreach (TreeNode n in nodes)
            {
                PrintRecursive(n, da, r);
            }
        }

        private void Frm_Sel_ActividadPadre_Load(object sender, EventArgs e)
        {
            CargarPantallas();
        }

        private void treeView1_DoubleClick(object sender, EventArgs e)
        {
            Frm_Cat_Actividades act = new Frm_Cat_Actividades();
            NodoPadre = treeView1.SelectedNode;
            

            this.Close();
        }
    }
}