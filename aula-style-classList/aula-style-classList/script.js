h2Site = document.querySelector("section#login h2");

h2Site.style.color = "red";

h2Site.style.fontsize = "20px";

 

parags = document.querySelectorAll("p.error-text");

p1 = parags[0];

p2 = parags[1];

 

p1.classList.add("visible");

p2.classList.add("visible");


document.addEventListener('DOMContentLoaded', function () {
    const userInputElement = document.querySelector('#login-usuario');
    const errorTextElement = document.querySelector('.error-text');
    const loginButton = document.querySelector('button');
  
    loginButton.addEventListener('click', function () {
      const userInput = userInputElement.value.trim();
  
      if (userInput === '') {
        userInputElement.classList.add('error');
        errorTextElement.classList.add('visible');
      } else {
        userInputElement.classList.remove('error');
        errorTextElement.classList.remove('visible');
        alert('Login bem-sucedido para: ' + userInput);
      }
    });
  });
  