<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.SharePoint.IdentityModel, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Assembly Name="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Import Namespace="Microsoft.SharePoint.WebControls" %>
<%@ Import Namespace="Microsoft.SharePoint" %>


<%@ Page Language="c#" AutoEventWireup="true" CodeBehind="MCLogin.aspx.cs" Inherits="MC.SP2010.CustomLogin.Login"
 Masterpagefile="MCAuth.master"%>

<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls"
    Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ID="Content2" ContentPlaceHolderID="PlaceHolderPageTitle" runat="server">
    <SharePoint:EncodedLiteral runat="server" EncodeMethod="HtmlEncode" ID="ClaimsFormsPageTitle" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea"
    runat="server">
    <SharePoint:EncodedLiteral runat="server" EncodeMethod="HtmlEncode" ID="ClaimsFormsPageTitleInTitleArea" />
</asp:Content>

<asp:Content ContentPlaceHolderID="PlaceHolderSiteName" runat="server" />
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server" />
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <SharePoint:EncodedLiteral runat="server"
        EncodeMethod="HtmlEncode" ID="ClaimsFormsPageMessage"
        Visible="false" />
    <asp:Login ID="signInControl" FailureText="<%$Resources:wss,login_pageFailureText%>"
        runat="server" Width="100%" DisplayRememberMe="false" />
        <br />
        <!--<span style="margin-left: 4px"><a href="~/forgotmypassword/default.aspx">
            <asp:Label ID="lblForgotPass" runat="server" Text="Forgot Password?">
            </asp:Label>
        </a></span>-->
    
    <!--<script type="text/javascript" language="javascript">
        // This Script focuses on the Username field (or the password field if the username was remembered)
        if (document.getElementById("ctl00_ContentPlaceHolder1_Login1_UserName").value != "") {
            document.getElementById("ctl00_ContentPlaceHolder1_Login1_Password").focus();
        } else {
            document.getElementById("ctl00_ContentPlaceHolder1_Login1_UserName").focus();
        } 
    </script>-->
</asp:Content>
