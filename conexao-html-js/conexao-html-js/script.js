const formulario = document.querySelector("#formulario");
const sectionPosts = document.querySelector("#posts");

const datasPosts = Array.from(sectionPosts.querySelectorAll(".post-data")).map(element => element.textContent);
const textosPosts = Array.from(sectionPosts.querySelectorAll(".post-texto")).map(element => element.textContent);
const redesSociais = Array.from(document.querySelectorAll(".lista_redes a")).map(element => element.href);

// Organizando as informações capturadas
const capturado = {
  post02,
  formulario,
  sectionPosts,
  datasPosts,
  textosPosts,
  redesSociais
};