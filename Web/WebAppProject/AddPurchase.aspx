﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPurchase.aspx.cs" Inherits="WebAppProject.AddPurchase_Click" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Gas Purchase</title>
</head>
<body>
    <form id="form1" runat="server">
    <div></div>
    <asp:ScriptManager ID="ScriptManager" runat="server" EnablePartialRendering="true" />

        <table align="center">
            <tr>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <table cellpadding="1" border="0" align="center">
                        <tr>
                            <td align="left" width="58px"><asp:Label ID="LabelWelcome" runat="server"/></td>
                            <td align="right"> 
                                <asp:LinkButton ID="GasTracker" Text="Gas Tracker" OnClick="GasTracker_Click" runat="server" Width="88px"/>
                                <asp:LinkButton ID="ButtonDirectory" Text="Directory" OnClick="Directory_Click" runat="server" Width="68px"/>
                                <asp:LinkButton ID="ButtonSignOut" Text="Sign Out" OnClick="Signout_Click" runat="server" Width="68px" />
                            </td>
                        </tr>
                        <tr>
                            <td align="left" colspan="3"><asp:Label ID="Label1" text="Enter your gas purchase:" runat="server" /></td>
                        </tr>
                     </table>
                 </ContentTemplate>
                 </asp:UpdatePanel>
             </tr>
             <tr>
                <td style="height: 206px" valign="top">
                    <asp:UpdatePanel ID="InsertGasPurchaseUpdatePanel" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                          <table cellpadding="2" border="0" style="background-color:Tan" align="center">
                            <tr>
                                <td><asp:Label ID="LabelDate" runat="server" AssociatedControlID="Calendar" 
                                             Text="Date" ForeColor="Black" /></td>
                                <td colspan="2" align="center"><asp:Calendar ID="Calendar" runat="server" Text="Select Purchase Date" ForeColor="Black" /></td>
                            </tr>
                            <tr>
                                <td colspan="3" align="center"><asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                                                HeaderText="There were errors on the page:" ForeColor="DarkRed"/></td>
                            </tr>
                            <tr>
                              <td><asp:Label ID="PriceLabel" runat="server" AssociatedControlID="PriceTextBox" 
                                             Text="Price" ForeColor="Black" /></td>
                              <td><asp:TextBox runat="server" ID="PriceTextBox" style="width:130px;height:100%" /></td>
                              <td><asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataTextField= "ENTITY_ID"
                                                    DataValueField="ENTITY_ID" style="width:98%;height:100%">
                                        <asp:ListItem>CAD</asp:ListItem>
                                        <asp:ListItem>USD</asp:ListItem>           
                                  </asp:DropDownList></td>
                              <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PriceTextBox"
                                        ErrorMessage="Price is required." ForeColor="DarkRed"> *
                                  </asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                              <td><asp:Label ID="AmountLabel" runat="server" AssociatedControlID="AmountTextBox" 
                                             Text="Amount" ForeColor="Black" /></td>
                              <td><asp:TextBox runat="server" ID="AmountTextBox" style="width:130px;height:100%"/></td>
                              <td><asp:DropDownList ID="LiterGallonDropDownList" runat="server" AutoPostBack="True" DataTextField= "ENTITY_ID"
                                                    DataValueField="ENTITY_ID" style="width:98%;height:100%">
                                        <asp:ListItem>Liters</asp:ListItem>
                                        <asp:ListItem>Gallons</asp:ListItem>           
                                  </asp:DropDownList></td>
                              <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="AmountTextBox"
                                        ErrorMessage="Amount is required." ForeColor="DarkRed"> *
                                  </asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                              <td><asp:Label ID="DistanceLabel" runat="server" AssociatedControlID="DistanceTextBox" 
                                             Text="Distance" ForeColor="Black" /></td>
                              <td><asp:TextBox runat="server" ID="DistanceTextBox" style="width:130px;height:100%"/></td>
                              <td><asp:DropDownList ID="KmMileDropDownList" runat="server" AutoPostBack="True" DataTextField= "ENTITY_ID"
                                                    DataValueField="ENTITY_ID" style="width:98%;height:100%">
                                        <asp:ListItem>Kms</asp:ListItem>
                                        <asp:ListItem>Miles</asp:ListItem>           
                                    </asp:DropDownList></td>
                              <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DistanceTextBox"
                                        ErrorMessage="Distance is required." ForeColor="DarkRed"> *
                                  </asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                              <td></td>
                              <td align="right"> <asp:LinkButton ID="InsertButton" runat="server" Text="Insert" OnClick="InsertButton_Click" /></td>
                              <td align="left"> <asp:LinkButton ID="Cancelbutton" runat="server" Text="Cancel" OnClick="CancelButton_Click" /></td>
                            </tr>
                            <tr>
                                <td align="left" colspan="3"><asp:Label runat="server" ID="InputTimeLabel"><%=DateTime.Now %></asp:Label></td>
                            </tr>
                          </table>                          
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="InsertButton" EventName="Click" />
                        </Triggers>
                    </asp:UpdatePanel>
                </td>
           </tr>
        </table>

    </form>
</body>
</html>