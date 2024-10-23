import 'package:flutter/material.dart';
import 'package:flutter_nfc_kit/flutter_nfc_kit.dart';

class NfcScanScreen extends StatefulWidget {
  final void Function(NFCTag tag) onTagRead;

  const NfcScanScreen({required this.onTagRead, Key? key}) : super(key: key);

  @override
  _NfcScanScreenState createState() => _NfcScanScreenState();
}

class _NfcScanScreenState extends State<NfcScanScreen> {
  bool isScanning = false;

  Future<void> startNfcScan() async {
    setState(() {
      isScanning = true;
    });

    try {
      NFCTag tag = await FlutterNfcKit.poll();
      widget.onTagRead(tag);
    } catch (e) {
      // Handle any errors that may occur
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error reading NFC tag: $e')),
      );
    } finally {
      setState(() {
        isScanning = false;
      });
      await FlutterNfcKit.finish();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NFC Tag Scanner'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: isScanning ? null : startNfcScan,
          child: isScanning ? const Text('Scanning...') : const Text('Ready to Scan Tag'),
        ),
      ),
    );
  }
}
