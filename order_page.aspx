<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="order_page.aspx.cs" Inherits="WebApplication2.Scripts.order_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="order_page.css" rel="stylesheet" />
    
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PlaceHolder1" runat="server">
     
 
    <div id="side_bar">

        <div class="Ge_tag">

            <h2>GeSolucions</h2>
        </div>
        <div class="items_holder">
            <ul>

                <li><a href="">How To</a></li>
                <li><a href="">Dashboard</a></li>
                <li><a href="order.html">Order</a></li>
                <li><a href="form.html">Profile</a></li>

               

            </ul>
        </div>
        <!-- <div class="food_image">
            <img src="brger.png" alt="">
        </div> -->
    </div>
    <section class="Order_table">
   
        
        <div class="container">
        <div class="row_2">
        <div id="data">
            <input type="text" id="name" placeholder="Enter Item">
            <input type="number" id="age" placeholder="Enter Quantity">
            <input type="text" id="country" placeholder="Enter Amount">
            <input type="text" id="Location" placeholder="Enter Location">

            <button class="add">Add</button>
        </div>

        <table>
            <tr>
                <th>Item</th>
                <th>Quantity</th>
                <th>Amount</th>
                <th>Location</th>
            </tr>
           
        </table>

       
        <div class="buttons">
            <label for="Month">Monthly Amount Remaining</label>
        <input class="amount_rem_Monthly" type="text" readonly placeholder="Monthly Amount Remaining" ><br>
        <label for="Month">Daily Amount Remaining</label>
        
        <input class="amount_rem_daily" type="text" readonly placeholder="Daily Amount Remaining">
    </div>
    <div class="checkout_button">
        <button class="News" onclick="reciept()" type="submit">Checkout</button>
        

    </div>

</div>
</div>
</section>


    <script src="order_page.js"></script>
    

<div class="divTable">
    <button type="submit">Confirm</button>
</div>
</asp:Content>
