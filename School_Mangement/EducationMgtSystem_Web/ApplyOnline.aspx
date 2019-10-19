<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="ApplyOnline.aspx.cs" Inherits="EducationMgtSystem_Web.ApplyOnline" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="topic_title">
        <img src="Resources/ico/add.png" />
        <h2>
            Online Admission Form</h2>
    </div>
    <div class="topic_details">
        <fieldset>
            <legend>Personal Info</legend>
            <asp:Image ID="imgstatus" runat="server" CssClass="lblstatus_icon" Visible="false" />
            <asp:Label ID="lblStatus" runat="server" Font-Bold="true"></asp:Label>
            <table width="100%" border="0" cellspacing="5" cellpadding="0">
                <tr>
                    <td width="15%">
                        <label>
                            Student First Name:</label>
                    </td>
                    <td width="35%">
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="input_field"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName"
                            SetFocusOnError="true" ForeColor="Red" ValidationGroup="signup" Display="Dynamic"
                            ErrorMessage="Should not be blank !!"></asp:RequiredFieldValidator>
                    </td>
                    <td width="15%">
                        <label>
                            Student Avatar</label>
                    </td>
                    <td width="35%" rowspan="4" valign="top" align="right">
                        <asp:Image ID="Image1" runat="server" CssClass="avater_details" Width="120px" ImageUrl="~/Resources/images/no_image.png" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Student Middle Name:</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMIddleName" runat="server" CssClass="input_field"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Student Last Name:</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server" CssClass="input_field"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName"
                            SetFocusOnError="true" ForeColor="Red" ValidationGroup="signup" Display="Dynamic"
                            ErrorMessage="Should not be blank !!"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Date of Birth:</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="input_field" Width="45%"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtDateOfBirth"
                            SetFocusOnError="true" ForeColor="Red" ValidationGroup="signup" Display="Dynamic"
                            ErrorMessage="Should not be blank !!"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Sex:</label>
                    </td>
                    <td>
                        <asp:DropDownList ID="drpSex" runat="server" CssClass="input_field" Width="39%">
                            <asp:ListItem>-- Select --</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Other&#39;s</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="drpSex"
                            InitialValue="-- Select --" SetFocusOnError="true" ForeColor="Red" ValidationGroup="signup"
                            Display="Dynamic" ErrorMessage="Should not be blank !!"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <label>
                            Upload Avatar:
                        </label>
                    </td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="avater_details" Width="71%" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Standard:</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="input_field"></asp:TextBox>
                    </td>
                    <td>
                        <label>
                            Nationality:</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNationality" runat="server" CssClass="input_field" Width="45%"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtNationality"
                            SetFocusOnError="true" ForeColor="Red" ValidationGroup="signup" Display="Dynamic"
                            ErrorMessage="Should not be blank !!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Section:</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="input_field"></asp:TextBox>
                    </td>
                    <td>
                        <label>
                            Religion:</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtReligion" runat="server" CssClass="input_field" Width="45%"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtReligion"
                            SetFocusOnError="true" ForeColor="Red" ValidationGroup="signup" Display="Dynamic"
                            ErrorMessage="Should not be blank !!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Identification Mark</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" CssClass="input_field"></asp:TextBox>
                    </td>
                    <td>
                        <label>
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server" CssClass="input_field"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Father's Name:</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFatherName" runat="server" CssClass="input_field"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFatherName"
                            SetFocusOnError="true" ForeColor="Red" ValidationGroup="signup" Display="Dynamic"
                            ErrorMessage="Should not be blank !!"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <label>
                            Mother's Name:
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMotherName" runat="server" CssClass="input_field"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtMotherName"
                            SetFocusOnError="true" ForeColor="Red" ValidationGroup="signup" Display="Dynamic"
                            ErrorMessage="Should not be blank !!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Father's Occupation:</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="input_field"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtFatherName"
                            SetFocusOnError="true" ForeColor="Red" ValidationGroup="signup" Display="Dynamic"
                            ErrorMessage="Should not be blank !!"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <label>
                            Mother's Occupation:
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="input_field"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </fieldset>
        <fieldset>
            <legend>Contact Info</legend>
            <table width="100%" border="0" cellspacing="5" cellpadding="0">
                <tr>
                    <td width="15%">
                        <label>
                            Mobile:</label>
                    </td>
                    <td width="35%">
                        <asp:TextBox ID="txtContact" runat="server" CssClass="input_field"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtContact"
                            SetFocusOnError="true" ForeColor="Red" ValidationGroup="signup" Display="Dynamic"
                            ErrorMessage="Should not be blank !!"></asp:RequiredFieldValidator>
                    </td>
                    <td width="15%">
                        <label>
                            LandLine No:
                        </label>
                    </td>
                    <td width="35%">
                        <asp:TextBox ID="txtContactLine" runat="server" CssClass="input_field"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtContactLine"
                            SetFocusOnError="true" ForeColor="Red" ValidationGroup="signup" Display="Dynamic"
                            ErrorMessage="Should not be blank !!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Address:</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="input_field" Height="50px"
                            TextMode="MultiLine"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtAddress"
                            SetFocusOnError="true" ForeColor="Red" ValidationGroup="signup" Display="Dynamic"
                            ErrorMessage="Should not be blank !!"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <label>
                            Email Id:
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox32" runat="server" CssClass="input_field"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </fieldset>
        <fieldset>
            <legend>Addmission Info</legend>
            <table width="100%" border="0" cellspacing="5" cellpadding="0">
                <tr>
                    <td width="15%">
                        <label>
                            Academic Year:</label>
                    </td>
                    <td width="35%">
                        <asp:TextBox ID="txtAcademicYear" runat="server" CssClass="input_field"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtAcademicYear"
                            SetFocusOnError="true" ForeColor="Red" ValidationGroup="signup" Display="Dynamic"
                            ErrorMessage="Should not be blank !!"></asp:RequiredFieldValidator>
                    </td>
                    <td width="15%">
                        <label>
                            Class:</label>
                    </td>
                    <td width="35%">
                        <asp:DropDownList ID="drpClass" runat="server" CssClass="input_field" Width="39%">
                            <asp:ListItem>-- Select --</asp:ListItem>
                            <asp:ListItem>2012</asp:ListItem>
                            <asp:ListItem>2013</asp:ListItem>
                            <asp:ListItem>2014&#39;s</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="drpClass"
                            InitialValue="-- Select --" SetFocusOnError="true" ForeColor="Red" ValidationGroup="signup"
                            Display="Dynamic" ErrorMessage="Should not be blank !!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                        <label>
                        </label>
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
        </fieldset>
        <div class="topic_submit">
            <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="my_input_button"
                Width="100px" OnClick="btnReset_Click" />
            <asp:Button ID="btnSubmit" runat="server" Text="Save" OnClick="btnSubmit_Click" CssClass="my_input_button icon_save"
                Width="150px" ValidationGroup="signup" />
        </div>
    </div>
</asp:Content>
