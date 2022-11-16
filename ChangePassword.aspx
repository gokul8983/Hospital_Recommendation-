<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:UpdatePanel ID="up3" runat="server">
        <contenttemplate>
            <div class="col-md-12" style="height: 100px">
                <div class="block">
                    <div class="block-title">
                        <h2>
                            Change Password</h2>
                        <span style="float: right;">
                         <asp:HiddenField ID="HfId" runat="server" />
                            <asp:Label ID="lblmsg" runat="server" CssClass="label-display"></asp:Label>
                        </span>
                    </div>
                    <div class="form-horizontal form-bordered">
                        <div class="form-group" style="border-bottom: none;">
                            <div class="col-md-12">
                            
                                
                                <label class="control-label col-md-2">
                                        Old Password
                                    </label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtOldPassword" placeholder="Enter Old Password" MaxLength="50"
                                        CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredDepartment" runat="server"
                                        ControlToValidate="txtOldPassword" ForeColor="Red">Please Enter Old Password</asp:RequiredFieldValidator>
                                </div>
                                </div>
                                <div class="col-md-12">
                                 <label class="control-label col-md-2">
                                        New Password
                                    </label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtNewPassword" placeholder="Enter New Password" MaxLength="50"
                                        CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" runat="server"
                                        ControlToValidate="txtNewPassword" ForeColor="Red">Please Enter New Password</asp:RequiredFieldValidator>
                                </div>
                                    </div>
                                <div class="col-md-12">
                                 <label class="control-label col-md-2">
                                       Re-New Password
                                    </label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtReNewPassword" placeholder="Enter Re-New Password" MaxLength="50"
                                        CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2" runat="server"
                                        ControlToValidate="txtReNewPassword" ForeColor="Red">Please Enter Re-New Password</asp:RequiredFieldValidator>
                                    &nbsp;<asp:CompareValidator ID="CompareValidator1" ForeColor="Red" Display="Dynamic" runat="server" ControlToCompare="txtNewPassword" ControlToValidate="txtReNewPassword" ErrorMessage="New and Re-New Password Not Match"></asp:CompareValidator>
                                </div>
                                    </div>
                                <div class="col-md-1">
                                <asp:Button Text="Change" ID="BtnSave" CssClass="btn btn-sm btn-primary" runat="server" OnClick="BtnSave_Click" 
                                   />
                                    </div><div class="col-md-2">
                                <asp:Button ID="BtnClear" Text="Clear" runat="server" CssClass="btn btn-sm btn-danger"
                                    CausesValidation="false" OnClick="BtnClear_Click"  />
                            </div>
                            </div>
                            <div style="clear: both; height: 15px;">
                            </div>
                            <div style="clear: both; height: 15px;">
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </contenttemplate>
    </asp:UpdatePanel>
</asp:Content>

