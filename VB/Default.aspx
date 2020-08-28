<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to customize standard ASP.NET controls to look similar to DevExpress controls</title>
    <script src="jquery-3.1.1.min.js"></script>
    <link href="Styles/Moderno/theme.css" rel="stylesheet" />
    <script src="Styles/Moderno/moderno.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>DevExpress</td>
                <td>ASP.NET</td>
                <td>DevExpress (disabled)</td>
                <td>ASP.NET (disabled)</td>
            </tr>
            <tr>
                <td>
                    <dx:ASPxButton ID="ASPxButton1" runat="server" Text="DX Button"></dx:ASPxButton>
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="ASP Button" CssClass="Moderno" />
                </td>
                <td>
                    <dx:ASPxButton ID="ASPxButton2" runat="server" Text="DX Button" Enabled="false"></dx:ASPxButton>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="ASP Button" CssClass="Moderno" Enabled="false" />
                </td>
            </tr>
            <tr>
                <td>
                    <dx:ASPxCheckBox ID="ASPxCheckBox1" runat="server" Text="Some text">
                    </dx:ASPxCheckBox>
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox1" runat="server" CssClass="Moderno" Checked="true" Text="Some text" />
                </td>
                <td>
                    <dx:ASPxCheckBox ID="ASPxCheckBox2" runat="server" Enabled="false" Checked="true" Text="Some text"></dx:ASPxCheckBox>
                    <dx:ASPxCheckBox ID="ASPxCheckBox3" runat="server" Enabled="false" Checked="false" Text="Some text"></dx:ASPxCheckBox>


                </td>
                <td>
                    <asp:CheckBox ID="CheckBox2" runat="server" Enabled="false" CssClass="Moderno" Checked="true" Text="Some text" /><br />
                    <asp:CheckBox ID="CheckBox3" runat="server" Enabled="false" CssClass="Moderno" Checked="false" Text="Some text" /></td>
            </tr>
            <tr>
                <td>
                    <dx:ASPxCheckBoxList ID="ASPxCheckBoxList1" runat="server" ValueType="System.String">
                        <Items>
                            <dx:ListEditItem Value="Item 1" Selected="true" />
                            <dx:ListEditItem Value="Item 2" />
                            <dx:ListEditItem Value="Item 3" />
                        </Items>
                    </dx:ASPxCheckBoxList>
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" CssClass="Moderno Moderno_CheckBoxList">
                        <asp:ListItem Value="Item 1" Selected="True"></asp:ListItem>
                        <asp:ListItem Value="Item 2"></asp:ListItem>
                        <asp:ListItem Value="Item 3"></asp:ListItem>
                    </asp:CheckBoxList></td>
                <td>
                    <dx:ASPxCheckBoxList ID="ASPxCheckBoxList2" runat="server" ValueType="System.String" Enabled="false">
                        <Items>
                            <dx:ListEditItem Value="Item 1" Selected="true" />
                            <dx:ListEditItem Value="Item 2" />
                            <dx:ListEditItem Value="Item 3" />
                        </Items>
                    </dx:ASPxCheckBoxList>
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList2" runat="server" CssClass="Moderno Moderno_CheckBoxList" Enabled="false">
                        <asp:ListItem Value="Item 1" Selected="True"></asp:ListItem>
                        <asp:ListItem Value="Item 2"></asp:ListItem>
                        <asp:ListItem Value="Item 3"></asp:ListItem>
                    </asp:CheckBoxList></td>
            </tr>
            <tr>
                <td>
                    <dx:ASPxCalendar ID="ASPxCalendar1" runat="server"></dx:ASPxCalendar>
                </td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server" CssClass="Moderno Moderno_Calendar">
                        <TitleStyle CssClass="Moderno_CalendarTitle" />
                    </asp:Calendar>
                </td>
                <td>
                    <dx:ASPxCalendar ID="ASPxCalendar2" runat="server" Enabled="false"></dx:ASPxCalendar>
                </td>
                <td>
                    <asp:Calendar ID="Calendar2" runat="server" CssClass="Moderno Moderno_Calendar" Enabled="false">
                        <TitleStyle CssClass="Moderno_CalendarTitle" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td>
                    <dx:ASPxHyperLink ID="ASPxHyperLink1" runat="server" Text="ASPxHyperLink" NavigateUrl="http://devexpress.com">
                    </dx:ASPxHyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://devexpress.com" CssClass="Moderno">HyperLink</asp:HyperLink></td>
                <td>
                    <dx:ASPxHyperLink ID="ASPxHyperLink2" runat="server" Text="ASPxHyperLink" NavigateUrl="http://devexpress.com" Enabled="false">
                    </dx:ASPxHyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="http://devexpress.com" CssClass="Moderno" Enabled="false">HyperLink</asp:HyperLink></td>
            </tr>
            <tr>
                <td>
                    <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="ASPxLabel"></dx:ASPxLabel>
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label" CssClass="Moderno"></asp:Label></td>
                <td>
                    <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="ASPxLabel" Enabled="false"></dx:ASPxLabel>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Label" Enabled="false" CssClass="Moderno"></asp:Label></td>
            </tr>

            <tr>
                <td>
                    <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" Width="170px" Text="TextBox"></dx:ASPxTextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Text="TextBox" CssClass="Moderno"></asp:TextBox>
                </td>
                <td>
                    <dx:ASPxTextBox ID="ASPxTextBox2" runat="server" Text="TextBox" Width="170px" Enabled="false"></dx:ASPxTextBox>
                </td>
                <td>

                    <asp:TextBox ID="TextBox2" runat="server" Text="TextBox" Enabled="false" CssClass="Moderno"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <dx:ASPxRadioButton ID="ASPxRadioButton2" runat="server" GroupName="dx1" Checked="true" Text="Variant 1"></dx:ASPxRadioButton>
                    <dx:ASPxRadioButton ID="ASPxRadioButton1" runat="server" GroupName="dx1" Text="Variant 2"></dx:ASPxRadioButton>
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="asp1" Checked="true" Text="Variant 1" CssClass="Moderno" /><br />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="asp1" Text="Variant 2" CssClass="Moderno" />
                </td>
                <td>
                    <dx:ASPxRadioButton ID="ASPxRadioButton3" runat="server" GroupName="dx2" Enabled="false" Checked="true" Text="Variant 1"></dx:ASPxRadioButton>
                    <dx:ASPxRadioButton ID="ASPxRadioButton4" runat="server" GroupName="dx2" Enabled="false" Text="Variant 2"></dx:ASPxRadioButton>
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="asp2" Checked="true" CssClass="Moderno" Enabled="false" Text="Variant 1" /><br />
                    <asp:RadioButton ID="RadioButton4" runat="server" GroupName="asp2" CssClass="Moderno" Enabled="false" Text="Variant 2" />

                </td>
            </tr>
            <tr>
                <td>
                    <dx:ASPxRadioButtonList ID="ASPxRadioButtonList1" runat="server" ValueType="System.String">
                        <Items>
                            <dx:ListEditItem Text="Item 1" Selected="true" />
                            <dx:ListEditItem Text="Item 2" />
                            <dx:ListEditItem Text="Item 3" />
                        </Items>
                    </dx:ASPxRadioButtonList>
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="Moderno Moderno_CheckBoxList">

                        <asp:ListItem Text="Item 1" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Item 2"></asp:ListItem>
                        <asp:ListItem Text="Item 3"></asp:ListItem>
                    </asp:RadioButtonList></td>
                <td>
                    <dx:ASPxRadioButtonList ID="ASPxRadioButtonList2" runat="server" ValueType="System.String" Enabled="false">
                        <Items>
                            <dx:ListEditItem Text="Item 1" Selected="true" />
                            <dx:ListEditItem Text="Item 2" />
                            <dx:ListEditItem Text="Item 3" />
                        </Items>
                    </dx:ASPxRadioButtonList>
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" CssClass="Moderno Moderno_CheckBoxList" Enabled="false">
                        <asp:ListItem Text="Item 1" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Item 2"></asp:ListItem>
                        <asp:ListItem Text="Item 3"></asp:ListItem>
                    </asp:RadioButtonList></td>
            </tr>
        </table>
    </form>
</body>
</html>