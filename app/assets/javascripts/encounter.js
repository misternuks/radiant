// for loading spinner on encounter/edit
const encounterForm = document.querySelector('.encounter-form')
const loadingSpinner = document.querySelector('.hidden-spinner')
const spinnerArea = document.querySelector('.spinner-area')
const spinnerText = document.querySelector('.spinner-text')

// loading promps for spinner

const loadingPrompts = ['Calibrating catapults','Spinning battle-axes','Buffing armor', 'Sharpening swords', 'Casting spells','Weaving magic', 'Enchanting arrows' ]


// for form on encounter/edit
const formTarget = document.querySelector('#encounter_target')
const formTargetLabel = document.querySelector('#encounter_target_label')
const formSuccessLabel = document.querySelector('#encounter_success_label')
const formSuccess = document.querySelector('#encounter_success')
const formCriticalLabel = document.querySelector('#encounter_critical_label')
const formCritical = document.querySelector('#encounter_criticality')

// for encounter form dmg types
const formSkillTypeAcid = document.querySelector('#encounter_skill_type_acid')
const formSkillTypeBludgeoning = document.querySelector('#encounter_skill_type_bludgeoning')
const formSkillTypeCold = document.querySelector('#encounter_skill_type_cold')
const formSkillTypeFire = document.querySelector('#encounter_skill_type_fire')
const formSkillTypeForce = document.querySelector('#encounter_skill_type_force')
const formSkillTypeLightning = document.querySelector('#encounter_skill_type_lightning')
const formSkillTypeNecrotic = document.querySelector('#encounter_skill_type_necrotic')
const formSkillTypePiercing = document.querySelector('#encounter_skill_type_piercing')
const formSkillTypePoison = document.querySelector('#encounter_skill_type_poison')
const formSkillTypePsychic = document.querySelector('#encounter_skill_type_psychic')
const formSkillTypeRadiant = document.querySelector('#encounter_skill_type_radiant')
const formSkillTypeSlashing = document.querySelector('#encounter_skill_type_slashing')
const formSkillTypeThunder = document.querySelector('#encounter_skill_type_thunder')



// submits for encounter forms
// formSkillTypeAcid.addEventListener("input", (event) => {
//     formTarget.classList.add('form-visible')
//     formTargetLabel.classList.add('form-visible')
// });

// formSkillTypeBludgeoning.addEventListener("input", (event) => {
//   formTarget.classList.add('form-visible')
//   formTargetLabel.classList.add('form-visible')
// });

// formSkillTypeCold.addEventListener("input", (event) => {
//   formTarget.classList.add('form-visible')
//   formTargetLabel.classList.add('form-visible')
// });

// formSkillTypeFire.addEventListener("input", (event) => {
//   formTarget.classList.add('form-visible')
//   formTargetLabel.classList.add('form-visible')
// });

// formSkillTypeForce.addEventListener("input", (event) => {
//   formTarget.classList.add('form-visible')
//   formTargetLabel.classList.add('form-visible')
// });

// formSkillTypeLightning.addEventListener("input", (event) => {
//   formTarget.classList.add('form-visible')
//   formTargetLabel.classList.add('form-visible')
// });

// formSkillTypeNecrotic.addEventListener("input", (event) => {
//   formTarget.classList.add('form-visible')
//   formTargetLabel.classList.add('form-visible')
// });

// formSkillTypePiercing.addEventListener("input", (event) => {
//   formTarget.classList.add('form-visible')
//   formTargetLabel.classList.add('form-visible')
// });

// formSkillTypePoison.addEventListener("input", (event) => {
//   formTarget.classList.add('form-visible')
//   formTargetLabel.classList.add('form-visible')
// });

// formSkillTypePsychic.addEventListener("input", (event) => {
//   formTarget.classList.add('form-visible')
//   formTargetLabel.classList.add('form-visible')
// });

// formSkillTypeRadiant.addEventListener("input", (event) => {
//   formTarget.classList.add('form-visible')
//   formTargetLabel.classList.add('form-visible')
// });

// formSkillTypeSlashing.addEventListener("input", (event) => {
//   formTarget.classList.add('form-visible')
//   formTargetLabel.classList.add('form-visible')
// });

// formSkillTypeThunder.addEventListener("input", (event) => {
//   formTarget.classList.add('form-visible')
//   formTargetLabel.classList.add('form-visible')
// });

// formTarget.addEventListener("input", (event) => {
//   formSuccessLabel.classList.add('form-visible')
//   formSuccess.classList.add('form-visible')

// });

// formSuccess.addEventListener("input", (event) => {
//   formCriticalLabel.classList.add('form-visible')
//   formCritical.classList.add('form-visible')
// })



encounterForm.addEventListener("submit", (event) => {
  loadingSpinner.classList.add('active-spinner');
  loadingSpinner.classList.remove('hidden-spinner');
  spinnerText.textContent = loadingPrompts[Math.floor(Math.random()*loadingPrompts.length)];
  spinnerArea.remove();
  setTimeout(() => {
    changeLoading1()
  }, 3000);
});


function changeLoading1() {
  spinnerText.textContent = loadingPrompts[Math.floor(Math.random()*loadingPrompts.length)];
  setTimeout(() => {
    changeLoading2()
  }, 3000);
}

function changeLoading2() {
  spinnerText.textContent = loadingPrompts[Math.floor(Math.random()*loadingPrompts.length)];
  setTimeout(() => {
    changeLoading3()
  }, 3000);
}
function changeLoading3() {
  spinnerText.textContent = loadingPrompts[Math.floor(Math.random()*loadingPrompts.length)];
  setTimeout(() => {
    changeLoading4()
  }, 3000);
}
function changeLoading4() {
  spinnerText.textContent = loadingPrompts[Math.floor(Math.random()*loadingPrompts.length)];
}
