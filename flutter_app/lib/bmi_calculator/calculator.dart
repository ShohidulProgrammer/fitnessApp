import 'dart:math' as math;

double bmi;
double minHealthyWeight;
double maxHealthyWeight;
double burn;
double gain;
String body;

double calculateBMI({int height, int weight}) =>
    bmi = weight / _heightSquared(height);

double calculateMinNormalWeight({int height}) =>
    minHealthyWeight = 19 * _heightSquared(height);

double calculateMaxNormalWeight({int height}) =>
    maxHealthyWeight = 24.9 * _heightSquared(height);

// double _heightSquared(int height) => math.pow(height / 100, 2);
double _heightSquared(int height) => math.pow(height * 0.0254, 2);

double calculateGainOrBurn({int weight}) => bmi >= 19 && bmi <= 24.9
    ? gain = 0
    : (bmi > 24.9)
        ? burn = (weight - maxHealthyWeight)
        : gain = (minHealthyWeight - weight);

String bodyType() => bmi >= 19 && bmi <= 24.9
    ? body = "You’re in the healthy range.\n Burn or Gain"
    : (bmi > 24.9)
        ? body = "You’re considered overweight.\n Burn Minimum"
        : body = "You’re considered underweight.\n Gain Minimum";
