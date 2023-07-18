<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="WebApplication2.Scripts.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="profile.css" rel="stylesheet" />
    <script src="profile.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PlaceHolder1" runat="server">
     <div class="whole_body">
        
        <div class="container">

            <div class="row forms">

                <div class="col-lg-4 first">

                    <div class="profile_image">
                        <img src="profile.png" alt="">
                    </div>
                    <div class="profile_content">
                        <h2>Alizain Merchant</h2>
                        <p>About</p>
                        <h2>Position</h2>
                    </div>
                </div>
                <div class="col-lg-4 second">

                    <div class="Profile_form">

                        <form action="submit">

                            <label for="Name">Name:</label>
                            <input type="text" name="for_name"  class="Inputs_1" onfocus="edit_1()" readonly id="Name" value="Alizain Merchant">
                            
                            <label for="Email_address">Email Address:</label>
                            <input type="text" name="for_Email" class="Inputs_2" onfocus="edit_2()" readonly id="Email_address" value="Alizain Merchant">

                            
                            <label for="Password">Password:</label>
                            <input type="password" name="for_password" class="Inputs_3" onfocus="edit_3()" readonly id="Password" value="Alizain Merchant">

                            
                            <label for="Monthly_Limit">Monthly Limit:</label>
                            <input type="text" name="MonthlyLimit" class="Inputs_4" onfocus="edit_4()" readonly id="Monthly_Limit" value="Alizain Merchant">
                            
                            <label for="Daily_limit">Daily limit:</label>
                            <input type="text" name="for_dailyLimit" onfocus="edit_5()" class="Inputs_5" id="Daily_limit" value="Alizain Merchant" readonly>
                        </form>
                        <div class="buttons">

                            <div class="update">
                                <button type="button" id= "please" onclick="Make_editable()">Update</button>
                            </div>
                            
                            <div class="Confirm">
                                <button type="button" id = "hiddens" onclick="saved_changes()">Confirm</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
</asp:Content>
