<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
* [moderno.js](./CS/Styles/Moderno/moderno.js) (VB: [moderno.js](./VB/Styles/Moderno/moderno.js))
* [theme.css](./CS/Styles/Moderno/theme.css)
<!-- default file list end -->
# How to customize standard ASP.NET controls to look similar to DevExpress controls
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t539371/)**
<!-- run online end -->


<p>Sometimes, it is required to combine standard ASP.NET controls with our DevExpress controls. However, it is difficult to customize the appearance of standard controls. <br>This example demonstrates how to implement this and create controls that look like DevExpress controls that use the Moderno theme. <br><br>For control customizing, add the required styles and scripts to your page:</p>


```aspx
<link href="Styles/Moderno/theme.css" rel="stylesheet" />
<script src="Styles/Moderno/moderno.js"></script>

```


<p> Then, just set the CssClass property of your control to "Moderno". For example:</p>


```aspx
<asp:Button ID="Button3" runat="server" Text="ASP Button" CssClass="Moderno" />

```


<p>For some controls, it is necessary to ad an additional CSS classes:</p>


```aspx
<asp:CheckBoxList ID="CheckBoxList1" runat="server" CssClass="Moderno Moderno_CheckBoxList">
	...
</asp:CheckBoxList>
<asp:Calendar ID="Calendar2" runat="server" CssClass="Moderno Moderno_Calendar" Enabled="false">
	<TitleStyle CssClass="Moderno_CalendarTitle" />
</asp:Calendar>

```


<p> This way, your controls will be patched so you can customize their appearance using CSS. All required CSS rules used in this examples are placed in the <strong><em>Styles/Moderno/theme.css</em></strong> file. </p>
<p><br>If you want to change any styles, you can inspect CSS rules at your end. Refer to the <a href="https://www.devexpress.com/Support/Center/p/K18570">How to inspect CSS rules</a> thread for more information about this option.</p>

<br/>


