// // ignore: constant_identifier_names
// const String ROOT = "http://tutionteacher.rrtutors.com";
// // ignore: constant_identifier_names
// const String REGISTRATION = "$ROOT/api/registration.php";
// // ignore: constant_identifier_names
// const String LOGIN = "$ROOT/api/login.php";

// login(email,password) async
//   {



//     Map data = {
//       'email': email,
//       'password': password
//     };
//     print(data.toString());
//     final  response= await http.post(
//         Uri.parse(LOGIN),
//         headers: {
//           "Accept": "application/json",
//           "Content-Type": "application/x-www-form-urlencoded"
//         },


//         body: data,
//         encoding: Encoding.getByName("utf-8")
//     )  ;
//     setState(() {
//       isLoading=false;
//     });
//     if (response.statusCode == 200) {
//       Map<String,dynamic>resposne=jsonDecode(response.body);
//       if(!resposne['error'])
//       {
//         Map<String,dynamic>user=resposne['data'];
//         print(" User name ${user['id']}");
//         savePref(1,user['name'],user['email'],user['id']);
//         Navigator.pushReplacementNamed(context, "/home");
//       }else{
//         print(" ${resposne['message']}");
//       }
//       scaffoldMessenger.showSnackBar(SnackBar(content:Text("${resposne['message']}")));

//     } else {
//       scaffoldMessenger.showSnackBar(SnackBar(content:Text("Please try again!")));
//     }


//   }
//   savePref(int value, String name, String email, int id) async {
//     SharedPreferences preferences = await SharedPreferences.getInstance();

//       preferences.setInt("value", value);
//       preferences.setString("name", name);
//       preferences.setString("email", email);
//       preferences.setString("id", id.toString());
//       preferences.commit();

//   }
// }
// //After calling the login api, we are check the response,
// // if the response code received as 200 response.statusCode == 200
// // then we need to JSON Parse to check the user details
// Map<String,dynamic>response=jsonDecode(response.body);

// if(!response['error']) {

// Map<String,dynamic>user=response['data'];

// print(" User name ${user['id']}");

// savePref(1,user['name'],user['email'],user['id']);

// Navigator.pushReplacementNamed(context, "/home");

// }

// else{

// print(" ${resposne['message']}");

// }

// //save user session
// savePref(int value, String name, String email, int id) async {

// SharedPreferences preferences = await SharedPreferences.getInstance();

// preferences.setInt("value", value);

// preferences.setString("name", name);

// preferences.setString("email", email);

// preferences.setString("id", id.toString());

// preferences.commit();

// }

// //validate user session
// var _loginStatus=0; getPref() async {

// SharedPreferences preferences = await SharedPreferences.getInstance();

// setState(() {

// _loginStatus = preferences.getInt("value")!;

// });

// }

// }

// //login api user registration
// signup(name,email,password) async
//   {
//     setState(() {
//       isLoading=true;
//     });
//     print("Calling");

//     Map data = {
//       'email': email,
//       'password': password,
//       'name': name
//     };
//     print(data.toString());
//     final  response= await http.post(
//       Uri.parse(REGISTRATION),
//       headers: {
//         "Accept": "application/json",
//         "Content-Type": "application/x-www-form-urlencoded"
//       },


//       body: data,
//         encoding: Encoding.getByName("utf-8")
//     )  ;

//     if (response.statusCode == 200) {

//       setState(() {
//         isLoading=false;
//       });
//       Map<String,dynamic>resposne=jsonDecode(response.body);
//       if(!resposne['error'])
//         {
//           Map<String,dynamic>user=resposne['data'];
//           print(" User name ${user['data']}");
//           savePref(1,user['name'],user['email'],user['id']);
//           Navigator.pushReplacementNamed(context, "/home");
//         }else{
//         print(" ${resposne['message']}");
//       }
//       scaffoldMessenger.showSnackBar(SnackBar(content:Text("${resposne['message']}")));

//     } else {
//       scaffoldMessenger.showSnackBar(SnackBar(content:Text("Please Try again")));
//     }

//   }