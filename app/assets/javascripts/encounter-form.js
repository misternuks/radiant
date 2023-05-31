// select icon and change inner text according to which button is chosen
const icon = document.querySelector('.icon')

const dmgSkillTypeAcid = document.querySelector('#encounter_skill_type_acid')
const dmgSkillTypeBludgeoning = document.querySelector('#encounter_skill_type_bludgeoning')
const dmgSkillTypeCold = document.querySelector('#encounter_skill_type_cold')
const dmgSkillTypeFire = document.querySelector('#encounter_skill_type_fire')
const dmgSkillTypeForce = document.querySelector('#encounter_skill_type_force')
const dmgSkillTypeLightning = document.querySelector('#encounter_skill_type_lightning')
const dmgSkillTypeNecrotic = document.querySelector('#encounter_skill_type_necrotic')
const dmgSkillTypePiercing = document.querySelector('#encounter_skill_type_piercing')
const dmgSkillTypePoison = document.querySelector('#encounter_skill_type_poison')
const dmgSkillTypePsychic = document.querySelector('#encounter_skill_type_psychic')
const dmgSkillTypeRadiant = document.querySelector('#encounter_skill_type_radiant')
const dmgSkillTypeSlashing = document.querySelector('#encounter_skill_type_slashing')
const dmgSkillTypeThunder = document.querySelector('#encounter_skill_type_thunder')

formSkillTypeAcid.addEventListener("input", (event) => {
  icon.innerHTML = "Acid"

});

formSkillTypeBludgeoning.addEventListener("input", (event) => {
icon.innerHTML = "Bludgeoning"

});

formSkillTypeCold.addEventListener("input", (event) => {
icon.innerHTML = "Cold"

});

formSkillTypeFire.addEventListener("input", (event) => {
icon.innerHTML = "Fire"

});

formSkillTypeForce.addEventListener("input", (event) => {
icon.innerHTML = "Force"

});

formSkillTypeLightning.addEventListener("input", (event) => {
icon.innerHTML = "Lightning"

});

formSkillTypeNecrotic.addEventListener("input", (event) => {
icon.innerHTML = "Necrotic"

});

formSkillTypePiercing.addEventListener("input", (event) => {
icon.innerHTML = "Piercing"

});

formSkillTypePoison.addEventListener("input", (event) => {
icon.innerHTML = "Poison"

});

formSkillTypePsychic.addEventListener("input", (event) => {
icon.innerHTML = "Psychic"

});

formSkillTypeRadiant.addEventListener("input", (event) => {
icon.innerHTML = "Radiant"

});

formSkillTypeSlashing.addEventListener("input", (event) => {
  icon.innerHTML = "Slashing"
});

formSkillTypeThunder.addEventListener("input", (event) => {
icon.innerHTML = "Thunder"

});

formTarget.addEventListener("input", (event) => {
formSuccessLabel.classList.add('form-visible')
formSuccess.classList.add('form-visible')

});

formSuccess.addEventListener("input", (event) => {
formCriticalLabel.classList.add('form-visible')
formCritical.classList.add('form-visible')
})
