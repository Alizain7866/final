let btnAdd = document.querySelector('.add');
let table = document.querySelector('table');
var Montly_limit = 5000;
var daily_limit = 3000;
let total = 0;
var clicked = 0;


let checkOutButton = document.querySelector('.News')

let nameInput = document.querySelector('#name');
let ageInput = document.querySelector('#age');
let countryInput = document.querySelector('#country');
let LocationInput = document.querySelector('#Location');
const input_1 = document.querySelector('.amount_rem_Monthly');
input_1.value = Montly_limit;
const input_2 = document.querySelector('.amount_rem_daily');
input_2.value = daily_limit;



function reciept() {
    document.querySelector('.divTable').style.visibility = 'visible';


    let name = nameInput.value;
    let age = ageInput.value;
    let country = countryInput.value;
    let location = LocationInput.value;

    if (name == '' || age == '' || country == '' || location == '') {
        alert('You have Not entered a Value, Please do so to Proceed');
    }
    //     else{
    //     alert('Your Order Has Been Forwared, Thank you.');
    //     window.open('admin_dashboard.html');
    // }
}




btnAdd.addEventListener('click', () => {
    clicked += 1;
    let name = nameInput.value;
    let age = ageInput.value;
    let country = countryInput.value;
    let location = LocationInput.value;

    if (name == '' || age == '' || country == '' || location == '') {
        alert('You have Not entered a Value, Please do so to Proceed');
    }
    else if (country % 1 != 0) {
        alert('Enter a Number in the Quantity')

    }

    else {
        let template = `
                <tr>
                    <td>${name}</td>
                    <td>${age}</td>
                    <td>${country}</td>
                    <td>${location}</td>

                </tr>`;


        if (input_1.value == 0) {
            alert('Monthly Limit Reached');
        }
        if (input_2.value == 0) {
            alert('Daily Limit Reached');

        }
        else {
            table.innerHTML += template;
            input_1.value = input_1.value - (country * age);
            input_2.value = input_2.value - (country * age);
            total += country * age;
        }

    }

    const div_table = document.querySelector('.divTable');

    const table_top = document.createElement('table');
    const tr1_top = document.createElement('tr');
    tr1_top.setAttribute('class', 'top');
    const td1_top = document.createElement('td');
    table_top.setAttribute('cellpadding', "0");
    table_top.setAttribute('cellspacing', "0");
    td1_top.setAttribute('colspan', "2");
    td1_top.setAttribute('class', 'noice');


    const tr2_top = document.createElement('tr');
    // const td2_top = document.createElement('td');

    // const table_2 = document.createElement('table');
    // const tr1_table_2 = document.createElement('tr');
    // const td1_table_2 = document.createElement('td');
    // const p1 = document.createElement('p');
    // const p2 = document.createElement('p');
    // p1.textContent = "Elite Institute, Pabbi";
    // p2.textContent = "Phone: +92345-2525842";
    // const td2_table_2 = document.createElement('td');
    // const p3 = document.createElement('p');
    // const p4 = document.createElement('p');
    // p3.textContent = "Web Developer: Hamid Khan";
    // p4.textContent = "Andriod developer: Alizain Merchant";


    // table_2.appendChild(tr1_table_2);
    // tr1_table_2.appendChild(td1_table_2);

    // tr1_table_2.appendChild(td2_table_2);
    // td2_table_2.appendChild(p3);
    // td2_table_2.appendChild(p4);


    // td1_table_2.appendChild(p1);
    // td1_table_2.appendChild(p2);



    const table_bottom = document.createElement('table');
    const tr_bottom = document.createElement('tr');
    tr_bottom.setAttribute('class', 'bhai');
    const td1_bottom = document.createElement('td');
    const heading_1_bottom = document.createElement('h4');
    heading_1_bottom.textContent = "Reciept";
    const td2_bottom = document.createElement('td');
    td2_bottom.textContent = "Invoice Number : DateCreated :";


    //append section table_top

    table_top.appendChild(tr1_top);
    tr1_top.appendChild(td1_top);
    td1_top.appendChild(table_bottom);

    //append section table_bottom

    table_bottom.appendChild(tr_bottom);
    tr_bottom.appendChild(td1_bottom);
    td1_bottom.appendChild(heading_1_bottom);
    tr_bottom.appendChild(td2_bottom);

    // //append to the div hehe
    div_table.appendChild(table_top);

    // // yeh bhi theek hai
    table_top.appendChild(tr2_top);







    // const tr3_table_top = document.createElement('tr');
    // const td3_table_top = document.createElement('td');
    // const td4_table_top = document.createElement('td');

    // td3_table_top.textContent = "Payment Method";
    // td4_table_top.textContent = "Check #";

    // table_top.appendChild(tr3_table_top);
    // tr3_table_top.appendChild(td3_table_top);
    // tr3_table_top.appendChild(td4_table_top);



    // const tr4_table_top = document.createElement('tr');
    // const td5_table_top = document.createElement('td');
    // const td6_table_top = document.createElement('td');

    // table_top.appendChild(tr4_table_top);
    // tr4_table_top.appendChild(td5_table_top);
    // tr4_table_top.appendChild(td6_table_top);


    // td5_table_top.textContent = "Item";
    // td6_table_top.textContent = "Price";



    // const tr5_table_top = document.createElement('tr');
    // const td7_table_top = document.createElement('td');
    // const td8_table_top = document.createElement('td');

    // table_top.appendChild(tr5_table_top);
    // tr5_table_top.appendChild(td7_table_top);
    // tr5_table_top.appendChild(td8_table_top);


    // td7_table_top.textContent = "Web Design";
    // td8_table_top.textContent = "$100";




    let template2 = `
  
                <tr>
                    <td>${name}</td>
                    <td>${age}</td>
                    <td>${country}</td>
                    <td>${location}</td>
                    <td>${country * age}</td>


                </tr>
                
                <tr>
                    <td>Tota Amount: ${total}</td>

                </tr>
                `;

    table_top.innerHTML += template2;


}

);





