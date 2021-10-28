import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:volume/volume.dart';

class HomeController extends GetxController {
  int selectedIndex = 2;
  String showedText = 'Popular';
  AudioManager? audioManager;
  int? maxVol, currentVol;
  ShowVolumeUI showVolumeUI = ShowVolumeUI.HIDE;
  List nums = [
    '90.5',
    '94.3',
    '98.5',
    '91.0',
    '104.2',
    '92.7',
  ];

  List texts2 = [
    'Divelement',
    'Diegoveloper',
    'Brayan',
    'Argel',
    'Fluttter',
    'Miau Miua',
  ];
  List tags = [
    "button1",
    "button2",
    "button3",
    "button4",
    "button5",
    "button6",
  ];
  List images = [
    'assets/1.png',
    'assets/2.png',
    'assets/3.png',
    'assets/4.png',
    'assets/5.png',
    'assets/6.png',
  ];
  Future<void> initAudioStreamType() async {
    await Volume.controlVolume(AudioManager.STREAM_MUSIC);
  }

  updateVolumes() async {
    maxVol = await Volume.getMaxVol;
    currentVol = await Volume.getVol;
    update();
  }

  setVol(int i) async {
    await Volume.setVol(i, showVolumeUI: showVolumeUI);
  }

  onChanged(double d) {
    setVol(d.toInt());
    updateVolumes();
  }

  @override
  // ignore: unnecessary_overrides
  void onInit() {
    initAudioStreamType();
    updateVolumes();

    super.onInit();
  }

  @override
  // ignore: unnecessary_overrides
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  onDestinationSelected(int index) {
    selectedIndex = index;
    if (selectedIndex == 2) {
      showedText = 'Popular';
    } else if (selectedIndex == 1) {
      showedText = 'Favorites';
    } else if (selectedIndex == 0) {
      showedText = 'AllStations';
    }

    update();
  }
}
