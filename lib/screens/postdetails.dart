import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ninetytwoagents/widgets/customtextfeild.dart';


final _posttitleController =TextEditingController();

class PostdetailsScreen extends StatefulWidget {
  const PostdetailsScreen({super.key});

  @override
  State<PostdetailsScreen> createState() => __PostdetailsScreenState();
}

class __PostdetailsScreenState extends State<PostdetailsScreen> {

 bool _firsttimebuyer = false;
  bool _hometosell = false;
  bool _needhelp = false;
  bool _foreclosure = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
           title: Text('Enter your Post Details',
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black,
              ),
            )),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomTextFormField(
              textController: _posttitleController, 
              labelText: 'Post Title'),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Expanded(
                            child: Row(
                              children: [
                                DropdownButton<String>(
                                  value: 'Font',
                                  items: const [
                                    DropdownMenuItem(
                                      value: 'Font',
                                      child: Text('Font'),
                                    ),
                                  ],
                                  onChanged: (String? newValue) {
                                    // Handle font selection
                                  },
                                ),
                                const SizedBox(width: 8.0),
                                ElevatedButton(
                                  onPressed: () {
                                    // Handle bold text
                                  },
                                  child: const Text('B'),
                                ),
                                const SizedBox(width: 8.0),
                                ElevatedButton(
                                  onPressed: () {
                                    // Handle underline text
                                  },
                                  child: const Text('U'),
                                ),
                                const SizedBox(width: 8.0),
                                ElevatedButton(
                                  onPressed: () {
                                    // Handle underline text
                                  },
                                  child: const Text('U'),
                                ),
                                const SizedBox(width: 8.0),
                                ElevatedButton(
                                  onPressed: () {
                                    // Handle underline text
                                  },
                                  child: const Text('U'),
                                ),
                                const SizedBox(width: 8.0),
                                ElevatedButton(
                                  onPressed: () {
                                 //----------
                                  },
                                  child: const Text('I'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: TextField(
                            maxLines: 10,
                            decoration: InputDecoration(
                              hintText: 'Your text here...',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ),

               CustomTextFormField(
              textController: _posttitleController, 
              labelText: 'State'),

               CustomTextFormField(
              textController: _posttitleController, 
              labelText: 'City'),

               CustomTextFormField(
              textController: _posttitleController, 
              labelText: 'Neighbourhood'),
              SizedBox(
                height: 20,
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                height: 6,
                color: Color(0xffF4F4F4),
              ),
              SizedBox(
                height: 30,
              ),

              Text('Zip Codes where do you want to focus',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20
              ),),

               CustomTextFormField(
              textController: _posttitleController, 
              labelText: 'Zip Code'),

               CustomTextFormField(
              textController: _posttitleController, 
              labelText: 'Zip Code'),

               CustomTextFormField(
              textController: _posttitleController, 
              labelText: 'Zip Code'),

               CustomTextFormField(
              textController: _posttitleController, 
              labelText: 'Zip Code'),

               CustomTextFormField(
              textController: _posttitleController, 
              labelText: 'Zip Code'),
              SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 6,
                color: Color(0xffF4F4F4),
              ),
              SizedBox(
                height: 25,
              ),

               CustomTextFormField(
              textController: _posttitleController, 
              labelText: 'Where do you want to buy?'),

               CustomTextFormField(
              textController: _posttitleController, 
              labelText: 'Pice Range'),

               CustomTextFormField(
              textController: _posttitleController, 
              labelText: 'Property Type'),

               Text(
              'Are you a first time home buyer?',
              style: TextStyle(fontSize: 18),
            ),
            Row(
              children: [
                Radio(
                  value: true,
                  groupValue: _firsttimebuyer,
                  onChanged: (bool? value) {
                    setState(() {
                      _firsttimebuyer = value!;
                    });
                  },
                ),
                const Text('Yes'),
                Radio(
                  value: false,
                  groupValue: _firsttimebuyer,
                  onChanged: (bool? value) {
                    setState(() {
                      _firsttimebuyer = value!;
                    });
                  },
                ),
                const Text('No'),
              ],
            ),

              Text(
              'Do you have a home to sell?',
              style: TextStyle(fontSize: 18),
            ),
            Row(
              children: [
                Radio(
                  value: true,
                  groupValue: _hometosell,
                  onChanged: (bool? value) {
                    setState(() {
                      _hometosell = value!;
                    });
                  },
                ),
                const Text('Yes'),
                Radio(
                  value: false,
                  groupValue: _hometosell,
                  onChanged: (bool? value) {
                    setState(() {
                      _hometosell = value!;
                    });
                  },
                ),
                const Text('No'),
              ],
            ),
            const SizedBox(height: 16),
             Text(
              'If so do you need help selling?',
              style: TextStyle(fontSize: 18),
            ),
            Row(
              children: [
                Radio(
                  value: true,
                  groupValue: _needhelp,
                  onChanged: (bool? value) {
                    setState(() {
                      _needhelp = value!;
                    });
                  },
                ),
                const Text('Yes'),
                Radio(
                  value: false,
                  groupValue: _needhelp,
                  onChanged: (bool? value) {
                    setState(() {
                      _needhelp = value!;
                    });
                  },
                ),
                const Text('No'),
              ],
            ),
            const SizedBox(height: 16),
             Text(
              'Are you interested in buying a foreclosure?',
              style: TextStyle(fontSize: 18),
            ),
            Row(
              children: [
                Radio(
                  value: true,
                  groupValue: _foreclosure,
                  onChanged: (bool? value) {
                    setState(() {
                      _foreclosure = value!;
                    });
                  },
                ),
                const Text('Yes'),
                Radio(
                  value: false,
                  groupValue: _foreclosure,
                  onChanged: (bool? value) {
                    setState(() {
                      _foreclosure = value!;
                    });
                  },
                ),
                const Text('No'),
              ],
            ),

               CustomTextFormField(
              textController: _posttitleController, 
              labelText: 'Email Bids '),

               CustomTextFormField(
              textController: _posttitleController, 
              labelText: 'Do you need financing?'),

            ],
            ),
        ),
      )
      );
  }
}
