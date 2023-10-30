bool realTelReg(String str) {
  return RegExp(r"^\d{11}$").hasMatch(str);
}

bool sixNumReg(String str) {
  return RegExp(r"^\d{6}$").hasMatch(str);
}
