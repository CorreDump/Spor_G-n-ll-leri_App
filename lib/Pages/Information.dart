import 'package:flutter/material.dart';
import 'User_info.dart';
import 'package:email_validator/email_validator.dart';

class InformationForm extends StatefulWidget {
  const InformationForm({Key? key}) : super(key: key);

  @override
  _InformationFormState createState() => _InformationFormState();
}

class _InformationFormState extends State<InformationForm> {
  UserInfo volunteer_info = UserInfo();

  List<String> _tumSehirler = [
    'Adana',
    'Adıyaman',
    'Afyonkarahisar',
    'Ağrı',
    'Amasya',
    'Ankara',
    'Antalya',
    'Artvin',
    'Aydın',
    'Balıkesir',
    'Bilecik',
    'Bingöl',
    'Bitlis',
    'Bolu',
    'Burdur',
    'Bursa',
    'Çanakkale',
    'Çankırı',
    'Çorum',
    'Denizli',
    'Diyarbakır',
    'Edirne',
    'Elazığ',
    'Erzincan',
    'Erzurum',
    'Eskişehir',
    'Gaziantep',
    'Giresun',
    'Gümüşhane',
    'Hakkari',
    'Hatay',
    'Isparta',
    'Mersin',
    'Istanbul',
    'İzmir',
    'Kars',
    'Kastamonu',
    'Kayseri',
    'Kırklareli',
    'Kırşehir',
    'Kocaeli',
    'Konya',
    'Kütahya',
    'Malatya',
    'Manisa',
    'Kahramanmaraş',
    'Mardin',
    'Muğla',
    'Muş',
    'Nevşehir',
    'Niğde',
    'Ordu',
    'Rize',
    'Sakarya',
    'Samsun',
    'Siirt',
    'Sinop',
    'Sivas',
    'Tekirdağ',
    'Tokat',
    'Trabzon',
    'Tunceli',
    'Şanlıurfa',
    'Uşak',
    'Van',
    'Yozgat',
    'Zonguldak',
    'Aksaray',
    'Bayburt',
    'Karaman',
    'Kırıkkale',
    'Batman',
    'Şırnak',
    'Bartın',
    'Ardahan',
    'Iğdır',
    'Yalova',
    'Karabük',
    'Kilis',
    'Osmaniye',
    'Düzce',
  ];

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: const Text(
                  'Name',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                // height: 200,
                // width: 200,
                // decoration: BoxDecoration(color: Colors.amber),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  // labelText: 'Email',
                  hintText: 'Enter your name',
                  // Customize the colors
                  hintStyle: TextStyle(color: Colors.white), // Hint text color
                  filled: true,
                  fillColor: Color.fromRGBO(120, 158, 137, 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black), // Border color when enabled
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black), // Border color when focused
                  ),
                ),
                style: TextStyle(color: Colors.white), // Text color
                onSaved: (value) => volunteer_info.name = value!,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Name cannot be empty';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              /////////////////////////////////////////////////////////////////////////////////////////////
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: const Text(
                  'Surname',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                // height: 200,
                // width: 200,
                // decoration: BoxDecoration(color: Colors.amber),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  // labelText: 'Email',
                  hintText: 'Enter your surname',
                  // Customize the colors
                  hintStyle: TextStyle(color: Colors.white), // Hint text color
                  filled: true,
                  fillColor: Color.fromRGBO(120, 158, 137, 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black), // Border color when enabled
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black), // Border color when focused
                  ),
                ),
                style: TextStyle(color: Colors.white), // Text color
                onSaved: (value) => volunteer_info.surname = value!,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Surname cannot be empty';
                  }
                  return null;
                },
              ),

              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: const Text(
                  'Email',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                // height: 200,
                // width: 200,
                // decoration: BoxDecoration(color: Colors.amber),
              ),

              SizedBox(height: 10),
              ////////////////////////////////////////////////////

              TextFormField(
                //initialValue: 'emrealtunbilek@gmail.com',
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  // labelText: 'Email',
                  hintText: 'Enter your email',
                  // Customize the colors
                  hintStyle: TextStyle(color: Colors.white), // Hint text color
                  filled: true,
                  fillColor: Color.fromRGBO(120, 158, 137, 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black), // Border color when enabled
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black), // Border color when focused
                  ),
                ),
                style: TextStyle(color: Colors.white), // Text color
                onSaved: (deger) {
                  volunteer_info.email = deger!;
                },
                validator: (deger) {
                  if (deger!.isEmpty) {
                    return 'email boş olamaz';
                  } else if (!EmailValidator.validate(deger)) {
                    return 'Geçerli mail giriniz';
                  } else
                    return null;
                },
              ),
              SizedBox(height: 10),

              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: const Text(
                  'Phone number',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                // height: 200,
                // width: 200,
                // decoration: BoxDecoration(color: Colors.amber),
              ),

              TextFormField(
                decoration: const InputDecoration(
                  // labelText: 'Email',
                  hintText: 'Enter your phone number',
                  // Customize the colors
                  hintStyle: TextStyle(color: Colors.white), // Hint text color
                  filled: true,
                  fillColor: Color.fromRGBO(120, 158, 137, 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black), // Border color when enabled
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black), // Border color when focused
                  ),
                ),
                style: TextStyle(color: Colors.white), // Text color
                keyboardType: TextInputType.phone,
                onSaved: (value) => volunteer_info.phoneNumber = value!,
                validator: (value) {
                  // Add validation for phone number if needed
                  return null;
                },
              ),
              SizedBox(height: 10),

              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: const Text(
                  'Username',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                // height: 200,
                // width: 200,
                // decoration: BoxDecoration(color: Colors.amber),
              ),

              TextFormField(
                decoration: const InputDecoration(
                  // labelText: 'Email',
                  hintText: 'Enter your nickname',
                  // Customize the colors
                  hintStyle: TextStyle(color: Colors.white), // Hint text color
                  filled: true,
                  fillColor: Color.fromRGBO(120, 158, 137, 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black), // Border color when enabled
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black), // Border color when focused
                  ),
                ),
                style: TextStyle(color: Colors.white), // Text color
                onSaved: (value) => volunteer_info.nickname = value!,
                validator: (value) {
                  // Add validation for nickname if needed
                  return null;
                },
              ),
              SizedBox(height: 10),

              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: const Text(
                  'Date of Birth',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                // height: 200,
                // width: 200,
                // decoration: BoxDecoration(color: Colors.amber),
              ),

              TextFormField(
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                  // labelText: 'Email',
                  hintText: 'Enter Date of Birth',
                  // Customize the colors
                  hintStyle: TextStyle(color: Colors.white), // Hint text color
                  filled: true,
                  fillColor: Color.fromRGBO(120, 158, 137, 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black), // Border color when enabled
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black), // Border color when focused
                  ),
                ),
                style: TextStyle(color: Colors.white), // Text color
                onSaved: (value) => volunteer_info.dob = value!,
                validator: (value) {
                  // Add validation for date of birth if needed
                  return null;
                },
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(120, 158, 137, 10),
                      border: Border.all(
                        color: Colors.black, // Set the color of the border
                        width: 1.0, // Set the width of the border
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Text(
                      "Where you live",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(120, 158, 137, 10),
                      border: Border.all(
                        color: Colors.black, // Set the color of the border
                        width: 1.0, // Set the width of the border
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: DropdownButton<String>(
                      hint: Text('Select city',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      icon: Icon(Icons.arrow_downward),
                      iconSize: 25,
                      items: _tumSehirler
                          .map(
                            (String oankiSehir) => DropdownMenuItem(
                              child: Text(oankiSehir,
                                  style: TextStyle(color: Colors.black)),
                              value: oankiSehir,
                            ),
                          )
                          .toList(),
                      value: volunteer_info.selectedCity,
                      onChanged: (String? yeni) {
                        setState(() {
                          volunteer_info.selectedCity = yeni;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 35,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(120, 158, 137, 10),
                        border: Border.all(
                          color: Colors.black, // Set the color of the border
                          width: 1.0, // Set the width of the border
                        ),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: const Text(
                        'Select Gender:',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 'Male',
                          groupValue: volunteer_info.selectedGender,
                          onChanged: (value) {
                            setState(() {
                              volunteer_info.selectedGender = value.toString();
                            });
                          },
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Radio(
                          value: 'Female',
                          groupValue: volunteer_info.selectedGender,
                          onChanged: (value) {
                            setState(() {
                              volunteer_info.selectedGender = value.toString();
                            });
                          },
                        ),
                        Text(
                          'Female',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),

                    /*
                    Text('Selected Gender: $selectedGender',
                        style: TextStyle(fontSize: 16)),
                    */
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  bool _validate = _formKey.currentState!.validate();
                  if (_validate) {
                    _formKey.currentState!.save();

                    String result = 'mal';
                    /*
                        'Name: $_name\nSurname: $_surname\nEmail: $_email\n'
                        'Password: $_password\nUsername: $_userName\nPhone Number: $_phoneNumber\n'
                        'Nickname: $_nickname\nDate of Birth: $_dob';
                      */

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.orange.shade300,
                        content: Text(
                          result,
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    );
                    _formKey.currentState!.reset();
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
