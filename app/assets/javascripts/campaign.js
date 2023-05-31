


// for loading spinner on campaign/new
const campaignForm = document.querySelector('#new_campaign')
const loadingSpinner = document.querySelector('.hidden-spinner')
const spinnerArea = document.querySelector('.spinner-area')
const spinnerText = document.querySelector('#spinner-text')


// for loading spinner on encounter/edit
// const encounterForm = document.querySelector('.encounter-form')


//for form on encounter/edit
// const formTarget = document.querySelector('#encounter_target')
// const formTargetLabel = document.querySelector('#encounter_target_label')
// const formSuccessLabel = document.querySelector('#encounter_success_label')
// const formSuccess = document.querySelector('#encounter_success')
// const formCriticalLabel = document.querySelector('#encounter_critical_label')
// const formCritical = document.querySelector('#encounter_criticality')
// const formSkillType = document.querySelector('#encounter_skill_type')


// console.log(encounterForm)
// // submits for encounter forms
// formSkillType.addEventListener("change", (event) => {
//     formTarget.classList.add('form-visible')
//     formTargetLabel.classList.add('form-visible')
// });

// formTarget.addEventListener("input", (event) => {
//   formSuccessLabel.classList.add('form-visible')
//   formSuccess.classList.add('form-visible')

// });

// formSuccess.addEventListener("input", (event) => {
//   formCriticalLabel.classList.add('form-visible')
//   formCritical.classList.add('form-visible')



// loading screen submits

campaignForm.addEventListener("submit", (event) => {
  loadingSpinner.classList.add('active-spinner');
  loadingSpinner.classList.remove('hidden-spinner');
  spinnerArea.remove();
  setTimeout(() => {
    changeLoading1()
  }, 4000);

});

function changeLoading1() {
  spinnerText.textContent = 'Conjuring weather'
  setTimeout(() => {
    changeLoading2()
  }, 4000);
}

function changeLoading2() {
  spinnerText.textContent = 'Setting mood'
  setTimeout(() => {
    changeLoading3()
  }, 4000);
}

function changeLoading3() {
  spinnerText.textContent = 'Travelling to world'
}
// encounterForm.addEventListener("click", (event) => {
//   console.log('OKAY')
// });
