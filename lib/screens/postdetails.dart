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

              Text('Zip Codes where do you want to focus',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 15
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

               CustomTextFormField(
              textController: _posttitleController, 
              labelText: 'Where do you want to buy?'),

               CustomTextFormField(
              textController: _posttitleController, 
              labelText: 'Pice Range'),

               CustomTextFormField(
              textController: _posttitleController, 
              labelText: 'Property Type'),

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
