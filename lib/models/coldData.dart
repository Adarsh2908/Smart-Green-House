// Imports
import 'package:flutter/material.dart';

class ColdData {
  late final int _temperature;
  late final int _humidity;
  late final int _coPercentage;
  late final int _co2Percentage;
  late final String _fanStatus;
  late final String _controlUnitStatus;

  // Constructor
  ColdData(this._temperature, this._humidity, this._coPercentage, this._co2Percentage, this._fanStatus, this._controlUnitStatus);

  // Data Return
  getColdData()
  {
    return({
      "temperature":_temperature,
      "humidity":_humidity,
      "coPercentage":_coPercentage,
      "co2Percentage":_co2Percentage,
      "fanStatus":_fanStatus,
      "controlUnitStatus":_controlUnitStatus
    });
  }
}
