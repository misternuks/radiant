// select icon and change inner text according to which button is chosen
const icon = document.querySelector('.icon-text')

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
  icon.classList.remove('icon-text');
  icon.classList.add('icon-pic1');
});

formSkillTypeBludgeoning.addEventListener("input", (event) => {
  icon.classList.remove('icon-text');
  icon.classList.add('icon-pic2');

});

formSkillTypeCold.addEventListener("input", (event) => {
  icon.classList.remove('icon-text');
  icon.classList.add('icon-pic3');

});

formSkillTypeFire.addEventListener("input", (event) => {
  icon.classList.remove('icon-text');
  icon.classList.add('icon-pic4');

});

formSkillTypeForce.addEventListener("input", (event) => {
  icon.classList.remove('icon-text');
  icon.classList.add('icon-pic5');

});

formSkillTypeLightning.addEventListener("input", (event) => {
  icon.classList.remove('icon-text');
  icon.classList.add('icon-pic6');

});

formSkillTypeNecrotic.addEventListener("input", (event) => {
  icon.classList.remove('icon-text');
  icon.classList.add('icon-pic7');

});

formSkillTypePiercing.addEventListener("input", (event) => {
  icon.classList.remove('icon-text');
  icon.classList.add('icon-pic8');

});

formSkillTypePoison.addEventListener("input", (event) => {
  icon.classList.remove('icon-text');
  icon.classList.add('icon-pic9');

});

formSkillTypePsychic.addEventListener("input", (event) => {
  icon.classList.remove('icon-text');
  icon.classList.add('icon-pic10');

});

formSkillTypeRadiant.addEventListener("input", (event) => {
  icon.classList.remove('icon-text');
  icon.classList.add('icon-pic11');

});

formSkillTypeSlashing.addEventListener("input", (event) => {
  icon.classList.remove('icon-text');
  icon.classList.add('icon-pic12');
});

formSkillTypeThunder.addEventListener("input", (event) => {
  icon.classList.remove('icon-text');
  icon.classList.add('icon-pic13');
});

formTarget.addEventListener("input", (event) => {
formSuccessLabel.classList.add('form-visible')
formSuccess.classList.add('form-visible')

});

formSuccess.addEventListener("input", (event) => {
formCriticalLabel.classList.add('form-visible')
formCritical.classList.add('form-visible')
})
