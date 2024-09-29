import 'package:flutter/material.dart';
import 'package:flutter_nfc_kit/flutter_nfc_kit.dart';

// Define a class to hold APDU command information
class ApduCommand {
  final String name;
  final String command;
  final String description;

  ApduCommand({
    required this.name,
    required this.command,
    required this.description,
  });
}

// Create a list of popular APDU commands
final List<ApduCommand> apduCommands = [
  ApduCommand(
    name: 'Select Payment Application',
    command: '00A4040007A0000002471001',
    description: 'Selects the MasterCard payment application.',
  ),
  ApduCommand(
    name: 'Get Processing Options',
    command: '80A8000002830000',
    description: 'Requests processing options from the card.',
  ),
  ApduCommand(
    name: 'Read Record 1',
    command: '00B2010C00',
    description: 'Reads record number 1 from the card.',
  ),
  // Add more commands as needed
];

// Map of status words to descriptions
final Map<String, String> statusWordDescriptions = {
  '9000': 'Success: The operation completed successfully.',
  '6200': 'Warning: No information given.',
  '6283': 'Warning: End of file or record reached before reading Le bytes.',
  '6300': 'Error: Authentication failed.',
  '6581': 'Error: Memory failure.',
  '6700': 'Error: Wrong length.',
  '6982': 'Error: Security condition not satisfied.',
  '6A81': 'Error: Function not supported.',
  '6A82': 'Error: File not found.',
  '6A83': 'Error: Record not found.',
  '6A84': 'Error: Not enough memory space.',
  '6A85': 'Error: Lc inconsistent with TLV structure.',
  '6A86': 'Error: Incorrect parameters P1-P2.',
  '6A88': 'Error: Referenced data not found.',
  '6B00': 'Error: Wrong parameters P1-P2.',
  '6D00': 'Error: Instruction code not supported or invalid.',
  '6E00': 'Error: Class not supported.',
  '6F00': 'Error: Unknown error.',
  // Add more status words as needed
};

class NfcApduScreen extends StatefulWidget {
  @override
  _NfcApduScreenState createState() => _NfcApduScreenState();
}

class _NfcApduScreenState extends State<NfcApduScreen> {
  final TextEditingController _apduController = TextEditingController();
  String _nfcResult = 'No data';
  ApduCommand? _selectedCommand;
  NFCTag? _currentTag;
  bool _isSessionActive = false;
  bool _isLoading = false;
  List<String> _history = [];

  @override
  void dispose() {
    _apduController.dispose();
    super.dispose();
  }

  bool _isValidHex(String input) {
    final validHexPattern = RegExp(r'^[0-9A-Fa-f]+$');
    return validHexPattern.hasMatch(input);
  }

  String _parseApduResponse(String response) {
    if (response.length < 4) {
      return 'Invalid response.';
    }

    // Extract status words (last four characters represent two bytes in hex)
    String sw1sw2 = response.substring(response.length - 4).toUpperCase();
    String data = response.substring(0, response.length - 4);

    // Get the description for the status words
    String statusDescription = statusWordDescriptions[sw1sw2] ?? 'Unknown status word.';

    // Build the result string
    String result = 'Status Word: $sw1sw2\n$statusDescription';

    if (data.isNotEmpty) {
      result = 'Data: $data\n' + result;
    }

    return result;
  }

  Future<void> _startNfcSession() async {
    setState(() {
      _isLoading = true;
    });
    try {
      _currentTag = await FlutterNfcKit.poll();
      setState(() {
        _isSessionActive = true;
        _nfcResult = 'NFC Session started. Ready to send commands.';
      });
    } catch (e) {
      setState(() {
        _nfcResult = 'Error starting NFC session: $e';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _sendApduCommand() async {
    if (!_isSessionActive || _currentTag == null) {
      setState(() {
        _nfcResult = 'Please start an NFC session first.';
      });
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      String apduCommand = _apduController.text.trim();

      if (apduCommand.isEmpty) {
        setState(() {
          _nfcResult = 'Please enter an APDU command.';
        });
        return;
      }

      if (!_isValidHex(apduCommand)) {
        setState(() {
          _nfcResult = 'Invalid APDU command. Please enter a valid hex string.';
        });
        return;
      }

      String response = await FlutterNfcKit.transceive(apduCommand);

      // Parse the response
      String parsedResponse = _parseApduResponse(response);

      setState(() {
        _nfcResult = parsedResponse;
        _history.add('Command: $apduCommand\nResponse: $parsedResponse');
      });
    } catch (e) {
      setState(() {
        _nfcResult = 'Error: $e';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _stopNfcSession() async {
    setState(() {
      _isLoading = true;
    });
    try {
      await FlutterNfcKit.finish();
      setState(() {
        _isSessionActive = false;
        _currentTag = null;
        _nfcResult = 'NFC Session ended.';
      });
    } catch (e) {
      setState(() {
        _nfcResult = 'Error ending NFC session: $e';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NFC APDU Sender'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Select APDU Command:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            DropdownButton<ApduCommand>(
              hint: Text('Select a command'),
              value: _selectedCommand,
              onChanged: (ApduCommand? newValue) {
                setState(() {
                  _selectedCommand = newValue;
                  _apduController.text = newValue?.command ?? '';
                });
              },
              items: apduCommands.map((ApduCommand command) {
                return DropdownMenuItem<ApduCommand>(
                  value: command,
                  child: Text(command.name),
                );
              }).toList(),
            ),
            if (_selectedCommand != null)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  _selectedCommand!.description,
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            SizedBox(height: 20),
            Text(
              'Or Enter APDU Command (Hex String):',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: _apduController,
              decoration: InputDecoration(
                hintText: 'e.g., 00A4040007A0000002471001',
              ),
            ),
            SizedBox(height: 20),
            if (_isLoading)
              CircularProgressIndicator(),
            if (!_isLoading)
              Column(
                children: [
                  ElevatedButton(
                    onPressed: _isSessionActive ? null : _startNfcSession,
                    child: Text('Start NFC Session'),
                  ),
                  ElevatedButton(
                    onPressed: _isSessionActive ? _stopNfcSession : null,
                    child: Text('Stop NFC Session'),
                  ),
                  ElevatedButton(
                    onPressed: _isSessionActive ? _sendApduCommand : null,
                    child: Text('Send APDU Command'),
                  ),
                ],
              ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  _nfcResult,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Command History:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _history.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 4.0),
                    child: ListTile(
                      title: Text(_history[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
