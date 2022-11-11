<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Tarea4.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 242px;
            margin-bottom: 0px;
        }
        .auto-style2 {
            text-align: center;
            font-size: xx-large;
            height: 43px;
        }
        .auto-style3 {
            height: 57px;
        }
        .auto-style4 {
            height: 57px;
            width: 520px;
        }
        .auto-style5 {
            height: 63px;
            width: 520px;
        }
        .auto-style6 {
            height: 63px;
            text-align: center;
        }
        .auto-style7 {
            color: #6666FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">Hospital</td>
                </tr>
                <tr>
                    <td class="auto-style5">Nombre:&nbsp;
                        <asp:TextBox ID="TNombre" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        Edad:&nbsp;&nbsp;
                        <asp:TextBox ID="TEdad" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        Genero:&nbsp;&nbsp;
                        <asp:TextBox ID="TGenero" runat="server"></asp:TextBox>
&nbsp; *<span class="auto-style7">(M o F)</span><br />
                        <br />
                        Telefono:&nbsp;&nbsp;
                        <asp:TextBox ID="TTelefono" runat="server" Height="22px"></asp:TextBox>
                        <br />
                        <br />
                        Seguro:&nbsp;&nbsp;
                        <asp:TextBox ID="TSeguro" runat="server" Width="128px"></asp:TextBox>
                        &nbsp;*<span class="auto-style7">(1 para si o 0 para no)</span><br />
                        <br />
                    </td>
                    <td class="auto-style6">
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idPaciente" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="136px" Width="390px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="idPaciente" HeaderText="idPaciente" InsertVisible="False" ReadOnly="True" SortExpression="idPaciente" />
                                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                                <asp:BoundField DataField="genero" HeaderText="genero" SortExpression="genero" />
                                <asp:CheckBoxField DataField="Seguro" HeaderText="Seguro" SortExpression="Seguro" />
                                <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                                <asp:BoundField DataField="edad" HeaderText="edad" SortExpression="edad" />
                                <asp:BoundField DataField="calle" HeaderText="calle" SortExpression="calle" />
                                <asp:BoundField DataField="numero" HeaderText="numero" SortExpression="numero" />
                                <asp:BoundField DataField="ciudad" HeaderText="ciudad" SortExpression="ciudad" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalConnectionString3 %>" InsertCommand="Insert into Paciente values (@Nombre,@Genero, @Seguro, @Telefono, @Edad, @Calle, @Numero, @Ciudad)" ProviderName="<%$ ConnectionStrings:HospitalConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [Paciente]">
                            <InsertParameters>
                                <asp:ControlParameter ControlID="TNombre" Name="Nombre" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TGenero" Name="Genero" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TSeguro" Name="Seguro" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TTelefono" Name="Telefono" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TEdad" Name="Edad" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TCalle" Name="Calle" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TNumero" Name="Numero" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TCiudad" Name="Ciudad" PropertyName="Text" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Domicilio:<br />
                        <br />
                        Calle:&nbsp;&nbsp;
                        <asp:TextBox ID="TCalle" runat="server" Width="158px"></asp:TextBox>
                        <br />
                        <br />
                        Numero:&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TNumero" runat="server" Width="163px"></asp:TextBox>
                        <br />
                        <br />
                        Ciudad:&nbsp;&nbsp;
                        <asp:TextBox ID="TCiudad" runat="server" Width="186px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BIngresar" runat="server" OnClick="BIngresar_Click" Text="Ingresar" />
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="BEdades" runat="server" Height="43px" OnClick="BEdades_Click" Text="Edades%" Width="98px" />
&nbsp;&nbsp;
                        <asp:Button ID="BGenero" runat="server" Height="43px" OnClick="BGenero_Click" Text="Genero%" Width="73px" />
&nbsp;&nbsp;&nbsp;<asp:Button ID="BAsegurados" runat="server" Height="46px" OnClick="BAsegurados_Click" Text="Asegurados" Width="103px" />
                    &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BBuscar" runat="server" Height="44px" OnClick="BBuscar_Click" Text="Buscar" Width="80px" />
                        <br />
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idPaciente" DataSourceID="SqlBuscar" ForeColor="Black" GridLines="Vertical">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="idPaciente" HeaderText="idPaciente" InsertVisible="False" ReadOnly="True" SortExpression="idPaciente" />
                                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                                <asp:BoundField DataField="genero" HeaderText="genero" SortExpression="genero" />
                                <asp:CheckBoxField DataField="Seguro" HeaderText="Seguro" SortExpression="Seguro" />
                                <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                                <asp:BoundField DataField="edad" HeaderText="edad" SortExpression="edad" />
                                <asp:BoundField DataField="calle" HeaderText="calle" SortExpression="calle" />
                                <asp:BoundField DataField="numero" HeaderText="numero" SortExpression="numero" />
                                <asp:BoundField DataField="ciudad" HeaderText="ciudad" SortExpression="ciudad" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlBuscar" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalConnectionString4 %>" SelectCommand="SELECT * FROM [Paciente] where nombre = @nombre">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TNombre" Name="nombre" PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
