// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"




const campaignForm = document.querySelector('#new_campaign')
const loadingSpinner = document.querySelector('.hidden-spinner')
const spinnerArea = document.querySelector('.spinner-area')

console.log(campaignForm)
console.log(loadingSpinner)
console.log(spinnerArea)


campaignForm.addEventListener("submit", (event) => {
  loadingSpinner.classList.add('active-spinner');
  loadingSpinner.classList.remove('hidden-spinner');
  spinnerArea.remove();
});
