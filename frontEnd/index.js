const magazineUl = document.querySelector('#magazine-ul')
const magazineSelect = document.querySelector('#magazine')

fetch('http://localhost:3004/magazines')
  .then(response => response.json())
  .then(result => renderMagazines(result))




function renderMagazines(data){
  data.map(magazine => {
    const li = document.createElement('li')
    console.log('index id', magazine.id)
    li.innerHTML = `<a href='magazine.html?id=${magazine.id}'>${magazine.name}</a>`
    magazineUl.appendChild(li)

    const magazineOption = document.createElement('option')
    magazineOption.innerText = magazine.name
    magazineOption.value = magazine.id
    magazineSelect.appendChild(magazineOption)
  })

}
