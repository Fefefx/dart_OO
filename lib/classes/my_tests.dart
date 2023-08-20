double calculateDiscount(double value, double discount, bool percentage) {
  if (value <= 0) {
    throw ArgumentError('O valor do produto não pode ser 0');
  }

  if (discount <= 0) {
    throw ArgumentError('O valor do desconto não pode ser menor igual a 0');
  }

  if (percentage) {
    return value - ((value * 15) / 100);
  }
  return value - discount;
}

String convertToUpperCase(String text) {
  return text.toUpperCase();
}

double returnValue(double value) {
  return value;
}
