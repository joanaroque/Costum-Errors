using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Costumizar_Erros
{
    public partial class Lista_jogos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddl_plataforma_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddl_plataforma.SelectedItem.Value == "Todos")
            {
                Xml1.TransformSource = "Jogos_formatar_todos.xslt";
            }
            else if (ddl_plataforma.SelectedItem.Value == "PC")
            {
                Xml1.TransformSource = "Jogos_formatar_PC.xslt";
            }
            else if (ddl_plataforma.SelectedItem.Value == "PS4")
            {
                Xml1.TransformSource = "Jogos_formatar_PS4.xslt";
            }
            else if (ddl_plataforma.SelectedItem.Value == "XBOX")
            {
                Xml1.TransformSource = "Jogos_formatar_XBOX.xslt";
            }
        }
    }
}