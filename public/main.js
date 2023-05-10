const insertButton = document.getElementById('insert');
const updateButton = document.getElementById('update');
const readAllButton = document.getElementById('readall');
const deleteButton = document.getElementById('delete');
const vasarlokCards = document.getElementById('vasarlok');

const vasarloidInput = document.getElementById('vasarloid');
const nevInput = document.getElementById('nev');
const emailcimInput = document.getElementById('email_cim');
const felhasznalonevInput = document.getElementById('felhasznalonev');
const jelszoInput = document.getElementById('jelszo');

function getAdatok() {
    const adatok = {
      vasarloid: vasarloidInput.value,
      nev: nevInput.value,
      email_cim: emailcimInput.value,
      felhasznalonev: felhasznalonevInput.value,
      jelszo: jelszoInput.value
    };
    return adatok;
  }

  insertButton.addEventListener('click', () => {
    const adatok = getAdatok();
    fetch('/vasarlo/', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(adatok)
    })
      .then(response => response.json())
      .then(data => console.log(data))
      .catch(error => console.error(error));
  });

  updateButton.addEventListener('click', () => {
    const adatok = getAdatok();
    let url = `/vasarlo/:${adatok.vasarloid}`;
    
    console.log(url);

    fetch(url, {
      method: 'PUT',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(adatok)
    })
      .then(response => response.json())
      .then(data => console.log(data))
      .catch(error => console.error(error));
  });

  readAllButton.addEventListener("click", async function() {
  
    const response = await fetch("http://localhost:3000/vasarloAll");
    const jsonData = await response.json();
    vasarlokCards.innerHTML="";
    for (let index = 0; index<jsonData.length; index++) {
        const element = jsonData[index];
        const vasarloCard=document.createElement("div");
          vasarloCard.innerHTML=`<div class="card">
          <p class="card-header">${element.vasarloid}</p>
          <p class="card-body">${element.nev}</p>
          <p class="card-body">${element.email_cim}</p>
          <p class="card-body">${element.felhasznalonev}</p>
          <p class="card-body">${element.jelszo}</p>
          </div>`;
          vasarlokCards.appendChild(vasarloCard);
    }
});

deleteButton.addEventListener('click', () => {
  const adatok = getAdatok();
  fetch(`/vasarlo/${adatok.vasarloid}`, {
    method: 'DELETE',
    headers: {
      'Content-Type': 'application/json'
    }
  })
    .then(response => response.json())
    .then(data => console.log(data))
    .catch(error => console.error(error));
});

  
