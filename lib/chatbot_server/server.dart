import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> generateResponse(String input) async {
  // to get api key link
  //https://platform.openai.com/account/api-keys
  const apiKey = "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";

  var url = Uri.https("api.openai.com", "/v1/completions");
  final response = await http.post(
    url,
    headers: {
      'Content-Type': 'application/json',
      "Authorization": "Bearer $apiKey"
    },
    body: json.encode({
      "model": "text-davinci-003",
      "prompt": input,
      'temperature': 0,
      'max_tokens': 2000,
      'top_p': 1,
      'frequency_penalty': 0.0,
      'presence_penalty': 0.0,
    }),
  );

  // Do something with the response
  Map<String, dynamic> newresponse = jsonDecode(response.body);
  if (response.statusCode == 200) {
    print("api call fineshed");
    return newresponse['choices'][0]['text'];
  } else {
    print("faileed");
    print("error messsage ${response.body}");
    return jsonDecode(response.body);
  }
}
