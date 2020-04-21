class PasswordValidationModel {
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasNumber = false;
  bool hasSpecialCharacter = false;

  PasswordValidationModel(this.hasLowercase, this.hasUppercase, this.hasNumber, this.hasSpecialCharacter);

}