<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lista_jogos.aspx.cs" Inherits="Costumizar_Erros.Lista_jogos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Lista de Jogos<br />
            <br />
            <br />
            Plataforma:
            <asp:DropDownList ID="ddl_plataforma" runat="server" AutoPostBack="True" Height="17px" OnSelectedIndexChanged="ddl_plataforma_SelectedIndexChanged" Width="185px">
                <asp:ListItem>Todos</asp:ListItem>
                <asp:ListItem>PS4</asp:ListItem>
                <asp:ListItem>PC</asp:ListItem>
                <asp:ListItem>XBOX</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <asp:Xml ID="Xml1" runat="server" DocumentSource="~/Jogos.xml" TransformSource="~/Jogos_formatar_todos.xslt"></asp:Xml>
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
