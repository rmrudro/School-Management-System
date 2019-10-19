<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site.Master" AutoEventWireup="true"
    CodeBehind="StudentsList.aspx.cs" Inherits="EducationMgtSystem_Web.admin.StudentsList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="topic_title">
        <img src="Resources/ico/it-ms.png" />
        <h2>
            Student List</h2>
    </div>
    <div class="topic_details">
        <fieldset>
            <legend>Student Search</legend>
            <label>
                Input Stuudent ID:</label><br />
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="input_field"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName"
                SetFocusOnError="true" ForeColor="Red" ValidationGroup="signup" Display="Dynamic"
                ErrorMessage=""></asp:RequiredFieldValidator>
            <asp:Button ID="btnGo" runat="server" Text="Go" OnClick="btnGo_Click"
                CssClass="my_input_button_search icon_serch" Width="150px" ValidationGroup="signup" />
        </fieldset>
        <div>
        </div>
        <fieldset>
            <legend>All Student List</legend>
            <asp:GridView ID="dgvEMS" runat="server" EmptyDataText="No Records Found!" EmptyDataRowStyle-ForeColor="red"
                AutoGenerateColumns="False" Width="100%" DataKeyNames="STUDENT_ID" GridLines="both"
                ShowFooter="true" CellPadding="5">
                <Columns>
                    <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT ID">
                        <HeaderStyle VerticalAlign="Middle" CssClass="Grid_Header" />
                        <ItemStyle HorizontalAlign="Left" Width="15%" CssClass="Grid_Border" />
                        <FooterStyle CssClass="Grid_Footer" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FIRST_NAME" HeaderText="FIRST NAME">
                        <HeaderStyle VerticalAlign="Middle" CssClass="Grid_Header" />
                        <ItemStyle HorizontalAlign="Left" Width="30%" CssClass="Grid_Border" />
                        <FooterStyle CssClass="Grid_Footer" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FATHER_NAME" HeaderText="FTH. NAME">
                        <HeaderStyle VerticalAlign="Middle" CssClass="Grid_Header" />
                        <ItemStyle HorizontalAlign="Left" Width="20%" CssClass="Grid_Border" />
                        <FooterStyle CssClass="Grid_Footer" />
                    </asp:BoundField>
                    <asp:BoundField DataField="NATIONALITY" HeaderText="NATIONALITY">
                        <HeaderStyle VerticalAlign="Middle" CssClass="Grid_Header" />
                        <ItemStyle HorizontalAlign="Left" Width="25%" CssClass="Grid_Border" />
                        <FooterStyle CssClass="Grid_Footer" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="ACTIONS" HeaderImageUrl="~/Resources/ico/right_arrow.png"
                        ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:ImageButton ID="imgEdit" runat="server" ImageUrl="~/Resources/ico/edit.png"
                                ToolTip="Edit" CommandName="Edit" CausesValidation="false" CssClass="dgvEMS_row_edit" />
                            <asp:ImageButton ID="imgDelete" runat="server" ImageUrl="~/Resources/ico/delete.png"
                                ToolTip="Delete" CommandName="Delete" CausesValidation="false" OnClientClick="return confirm('Are you sure you want to delete?')"
                                CssClass="dgvEMS_row_edit" />
                        </ItemTemplate>
                        <HeaderStyle Width="10%" VerticalAlign="Middle" CssClass="Grid_Header" />
                        <ItemStyle Width="10%" HorizontalAlign="Center" VerticalAlign="Middle" CssClass="Grid_Border" />
                        <FooterStyle CssClass="Grid_Footer" />
                    </asp:TemplateField>
                </Columns>
                <RowStyle CssClass="Grid_RowStyle" />
                <AlternatingRowStyle CssClass="Grid_AltRowStyle" />
            </asp:GridView>
            <div class="paginationGrid">
                <ul>
                    <asp:Label ID="lblpage" runat="server" Text="" CssClass="currentPageStatus" />
                    <li>
                        <asp:LinkButton ID="lnkFirst" runat="server" OnClick="lnkFirst_Click" CssClass="naVigate">first</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="lnkPrevious" runat="server" OnClick="lnkPrevious_Click" CssClass="naVigate">&laquo; prev</asp:LinkButton></li>
                    <li>
                        <asp:DataList ID="DataListPaging" runat="server" RepeatDirection="Horizontal" OnItemCommand="DataListPaging_ItemCommand"
                            OnItemDataBound="DataListPaging_ItemDataBound" CssClass="indexNum">
                            <ItemTemplate>
                                <asp:LinkButton ID="Pagingbtn" runat="server" CommandArgument='<%# Eval("PageIndex") %>'
                                    class="current " CommandName="newpage" Text='<%# Eval("PageText") %> '></asp:LinkButton>
                            </ItemTemplate>
                        </asp:DataList></li>
                    <li>
                        <asp:LinkButton ID="lnkNext" runat="server" OnClick="lnkNext_Click" CssClass="naVigate">next &raquo;</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="lnkLast" runat="server" OnClick="lnkLast_Click" CssClass="naVigate">last</asp:LinkButton></li>
                </ul>
            </div>
        </fieldset>
    </div>
</asp:Content>
