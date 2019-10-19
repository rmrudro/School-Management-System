<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site.Master" AutoEventWireup="true"
    CodeBehind="FeesInstallment.aspx.cs" Inherits="EducationMgtSystem_Web.admin.FeesInstallment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="topic_title">
        <img src="Resources/ico/add.png" />
        <h2>
            Fees Installment</h2>
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
            <asp:Button ID="btnSubmit" runat="server" Text="Search.." OnClick="btnSubmit_Click"
                CssClass="my_input_button_search icon_serch" Width="150px" ValidationGroup="signup" />
        </fieldset>
        <div>
        </div>
        <fieldset>
            <legend>Student Search Result</legend>
            <table width="100%" border="0" cellspacing="5" cellpadding="0">
                <tr>
                    <td width="15%">
                        <label>
                            Student Name</label>
                    </td>
                    <td width="35%">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="input_field"></asp:TextBox>
                    </td>
                    <td width="15%">
                        <label>
                            Student Avater</label>
                    </td>
                    <td width="35%" rowspan="4" valign="top" align="right">
                        <asp:Image ID="Image1" runat="server" CssClass="avater_details" Width="120px" ImageUrl="~/Resources/images/no_image.png" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Class</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="input_field"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Class</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="input_field"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Class</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="input_field"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Class</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="input_field"></asp:TextBox>
                    </td>
                    <td>
                        <label>
                            Identification Mark</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox12" runat="server" CssClass="input_field"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Class</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="input_field"></asp:TextBox>
                    </td>
                    <td>
                        <label>
                            Date of Birth</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox11" runat="server" CssClass="input_field"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Class</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="input_field"></asp:TextBox>
                    </td>
                    <td>
                        <label>
                            Sex</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox10" runat="server" CssClass="input_field"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Class</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" CssClass="input_field"></asp:TextBox>
                    </td>
                    <td>
                        <label>
                            Admission Date</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server" CssClass="input_field"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </fieldset>
        <fieldset>
            <legend>Payment Info.</legend>
            <table>
                <tr>
                    <td width="15%">
                        <label>
                            Library Fee</label>
                    </td>
                    <td width="35%">
                        <asp:TextBox ID="TextBox13" runat="server" CssClass="input_field"></asp:TextBox>
                    </td>
                    <td width="15%">
                        <label>
                            Discount Amount</label>
                    </td>
                    <td width="35%">
                        <asp:TextBox ID="TextBox14" runat="server" CssClass="input_field"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Student Fee</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox15" runat="server" CssClass="input_field"></asp:TextBox>
                    </td>
                    <td>
                        <label>
                            Due Fee</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox16" runat="server" CssClass="input_field"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Installment Month</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox17" runat="server" CssClass="input_field"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>
        </fieldset>
        <div class="topic_submit">
            <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="my_input_button"
                Width="100px" OnClick="btnReset_Click" />
            <asp:Button ID="btnPayment" runat="server" Text="Make Payment" CssClass="my_input_button icon_pay"
                Width="250px" ValidationGroup="signup" onclick="btnPayment_Click" />
        </div>
    </div>
</asp:Content>
