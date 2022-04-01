<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_3E_Laboratorio_8._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        Ingresar Datos del Alumno<asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="252px" AutoGenerateRows="False" DataKeyNames="Carne" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <Fields>
                <asp:BoundField DataField="Carne" HeaderText="Carne" ReadOnly="True" SortExpression="Carne" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Grado" HeaderText="Grado" SortExpression="Grado" />
                <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Listado] WHERE [Carne] = @original_Carne AND [Nombre] = @original_Nombre AND [Grado] = @original_Grado AND (([Fecha] = @original_Fecha) OR ([Fecha] IS NULL AND @original_Fecha IS NULL))" InsertCommand="INSERT INTO [Listado] ([Carne], [Nombre], [Grado], [Fecha]) VALUES (@Carne, @Nombre, @Grado, @Fecha)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Listado]" UpdateCommand="UPDATE [Listado] SET [Nombre] = @Nombre, [Grado] = @Grado, [Fecha] = @Fecha WHERE [Carne] = @original_Carne AND [Nombre] = @original_Nombre AND [Grado] = @original_Grado AND (([Fecha] = @original_Fecha) OR ([Fecha] IS NULL AND @original_Fecha IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Carne" Type="Int32" />
                <asp:Parameter Name="original_Nombre" Type="String" />
                <asp:Parameter Name="original_Grado" Type="Int32" />
                <asp:Parameter Name="original_Fecha" Type="DateTime" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Carne" Type="Int32" />
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Grado" Type="Int32" />
                <asp:Parameter Name="Fecha" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Grado" Type="Int32" />
                <asp:Parameter Name="Fecha" Type="DateTime" />
                <asp:Parameter Name="original_Carne" Type="Int32" />
                <asp:Parameter Name="original_Nombre" Type="String" />
                <asp:Parameter Name="original_Grado" Type="Int32" />
                <asp:Parameter Name="original_Fecha" Type="DateTime" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

    <div class="row">
        <div class="col-md-4">
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Width="808px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Carne" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Carne" HeaderText="Carne" ReadOnly="True" SortExpression="Carne" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Grado" HeaderText="Grado" SortExpression="Grado" />
                <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
            <br />
        </div>
        <div class="col-md-4">
    </div>

    </div>
</asp:Content>
