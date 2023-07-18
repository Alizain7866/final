<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="main_dashboard.aspx.cs" Inherits="WebApplication2.Scripts.main_dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="main_dashboard.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PlaceHolder1" runat="server">

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <!-- <section id="lists">

    
  </section> -->



    <section id="Welcome_part">
    

        <div class="container">

            <div class="row row_3">
                <div class="col-lg-4">
                <div class="welcomeUser">
                    <h3>Welcome</h3>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="just_text">
                    <h3>Feeling Hungry..Ready To Order?</h3>
                </div>
            </div>
            <div class="col-lg-4 for_hover">
                <div class="profile">
                    <img src="profile.png" alt="">
                    <p>Name</p>
                    
                </div>
                <div class="oneUl">
                    <ul id="hidden_please">
                        <li><a href="">Contact</a></li>
                        <li><a href="">Don't Contact</a></li>
                        <li><a href="food_system.html">Sign Out</a></li>

                    </ul>
                </div>
            </div>
            </div>
        </div>


    </section>

    <section id="main_big_div">

    <div id="side_bar">

        <div class="Ge_tag">

            <h2>GeSolucions</h2>
        </div>
        <div class="items_holder">
            <ul>

                <li><a href="">How To</a></li>
                <li><a href="">Dashboard</a></li>
                <li><a href="order_page.aspx">Order</a></li>
                <li><a href="profile.aspx">Profile</a></li>

               

            </ul>
        </div>
        <!-- <div class="food_image">
            <img src="brger.png" alt="">
        </div> -->
    </div>

    <section id="main_dash">
    
        <div id="monthly_limit_division">
            <div class="main_data data_1">
            <div class="txt text_1">
                <h2>Data Summary</h2>
            </div>
            <div class="chart">
                <canvas id="mychart"></canvas>
            </div>
        </div>
            <script>
                
const ctx = document.getElementById('mychart').getContext('2d');

const mychart = new Chart(ctx, {
type: 'doughnut',
data: {
labels: ['Monthly Amount Left', 'Monthly Amount Used','Daily Amount Left', 'Daily Amount Used'],
datasets: [{
label: 'Monthly_data',
data: [656, 417, 600,900],
borderColor:'black',

barThickness:60,
backgroundColor: ['lightgreen','lightblue', 'darkcyan', 'orange']
}]
},
options: {
    
    
scales: {
y: {
beginAtZero: true,
ticks:{
  display:false
}
},

x:{
  beginAtZero:true,
  ticks:{
      display:false
      
  }
} 
}
}
});

            </script>
            
        </div>
        <div id="weekly Expense">

            <div class="main_data">
                <div class="txt text_2">
                    <h2>Weekly Expense</h2>
                </div>
                <div class="chart_2">
                    <canvas id="mychart_2"></canvas>
                </div>
            </div>
            <script>
                
                const ctx_2 = document.getElementById('mychart_2').getContext('2d');
                
                const mychart_2 = new Chart(ctx_2, {
                type: 'bar',
                data: {
                labels: ['Week 1', 'Week 2', 'Week 3', 'Week 1'],
                datasets: [{
                label: 'Percentage Ordered',
                data: [656, 417,656, 417],
                borderColor:'black',
                
                barThickness:50,
                backgroundColor: ['lightblue']
                }]
                },
                options: {
                    
                    
                scales: {
                y: {
                beginAtZero: true,
                ticks:{
                  color:['blue', 'red', 'green', 'orange']
                }
                },
                
                x:{
                  beginAtZero:true,
                  ticks:{
                    color:'blue'
                      
                  }
                } 
                }
                }
                });
                
                            </script>

<div class="main_data">
    <div class="txt text_3">
        <h2>Most Ordered Items</h2>
    </div>
    <div class="chart_3">
        <canvas id="mychart_3"></canvas>
    </div>
</div>
<script>
                
    const ctx_3 = document.getElementById('mychart_3').getContext('2d');
    
    const mychart_3 = new Chart(ctx_3, {
    type: 'bar',
    data: {
    labels: ['Shabbir Biryani', 'Naseeb Biryani', 'Daal Chawal', 'Animal Fries'],
    datasets: [{
    label: 'Item Percentage',
    data: [656, 417,656, 417],
    borderColor:'black',
    
    barThickness:50,
    backgroundColor: ['lightgreen']
    }]
    },
    options: {
        
        
    scales: {
    y: {
    beginAtZero: true,
    ticks:{
        color:['blue', 'red', 'green', 'orange']
    }
    },
    
    x:{
      beginAtZero:true,
      ticks:{
        color:'blue'
          
      }
    } 
    }
    }
    });
    
</script>
            
       
</div>
    </section>
</section>
    
    
    
</asp:Content>
