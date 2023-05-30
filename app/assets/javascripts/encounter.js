// for loading spinner on encounter/edit
const encounterForm = document.querySelector('.encounter-form')
const loadingSpinner = document.querySelector('.hidden-spinner')
const spinnerArea = document.querySelector('.spinner-area')



// for form on encounter/edit
const formTarget = document.querySelector('#encounter_target')
const formTargetLabel = document.querySelector('#encounter_target_label')
const formSuccessLabel = document.querySelector('#encounter_success_label')
const formSuccess = document.querySelector('#encounter_success')
const formCriticalLabel = document.querySelector('#encounter_critical_label')
const formCritical = document.querySelector('#encounter_criticality')
const formSkillType = document.querySelector('#encounter_skill_type')


console.log(encounterForm)
// submits for encounter forms
formSkillType.addEventListener("change", (event) => {
    formTarget.classList.add('form-visible')
    formTargetLabel.classList.add('form-visible')
});

formTarget.addEventListener("input", (event) => {
  formSuccessLabel.classList.add('form-visible')
  formSuccess.classList.add('form-visible')

});

formSuccess.addEventListener("input", (event) => {
  formCriticalLabel.classList.add('form-visible')
  formCritical.classList.add('form-visible')
})



encounterForm.addEventListener("submit", (event) => {
  loadingSpinner.classList.add('active-spinner');
  loadingSpinner.classList.remove('hidden-spinner');
  spinnerArea.remove();
});
