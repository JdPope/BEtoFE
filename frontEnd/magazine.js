const searchParam = new URLSearchParams(window.location.search)
const id = searchParam.get('id')


const header = document.querySelector('#mag-header')
const artUl = document.querySelector('#article-ul')

// Note: the show route for magazines is not set up, but if it was, this is how you would access it.
fetch(`http://localhost:3004/magazines/${id}`)
  .then(response => response.json())
  .then(result => renderMagazineInfo(result))

// function filterMagazines(data){
//   const magazine = data.filter(magazine => {
//     return magazine.id == id
//   })
//   renderMagazineInfo(magazine[0])
// }

function renderMagazineInfo(data){
  const magName = document.createElement('h2')
  magName.innerText = data.name
  header.append(magName)

  data.articles.map( article =>{
    const artLi = document.createElement('li')
    artLi.innerHTML = `<a href='article.html?id=${article.id}'>${article.title}</a>`
    artUl.appendChild(artLi)
  })
}
