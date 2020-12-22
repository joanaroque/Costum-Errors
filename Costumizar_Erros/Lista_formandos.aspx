<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lista_formandos.aspx.cs" Inherits="Costumizar_Erros.Lista_formandos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Lista de formandos<br />
            <asp:Xml ID="Xml1" runat="server" DocumentSource="~/Turma.xml" TransformSource="~/formatar_turma.xslt"></asp:Xml>
            <br />
            <br />
            Lista de cursos<br />
            <asp:Xml ID="Xml2" runat="server" DocumentSource="~/Curso.xml" TransformSource="~/Cursoooos.xslt"></asp:Xml>
            <br />
        </div>
    </form>
</body>
</html>
