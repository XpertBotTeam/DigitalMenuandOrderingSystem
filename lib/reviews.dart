import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewInputForm extends StatefulWidget {
  const ReviewInputForm({super.key});

  @override
  _ReviewInputFormState createState() => _ReviewInputFormState();
}

class _ReviewInputFormState extends State<ReviewInputForm> {
  final TextEditingController reviewController = TextEditingController();
  double rating = 0; // Initial rating

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Write a Review'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Your Review',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: reviewController,
              maxLines: 4,
              decoration: const InputDecoration(
                hintText: 'Write your review here',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Rating',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            RatingBar.builder(
              initialRating: rating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: false,
              itemCount: 5,
              itemSize: 40,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (newRating) {
                setState(() {
                  rating = newRating;
                });
              },
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle the review submission here
                  final reviewText = reviewController.text;
                  // Send the review text and rating to the server
                  print('Review Text: $reviewText');
                  print('Rating: $rating');
                  // You can send this data to the server and navigate to the thank you page.
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red), // Change the button color to red
                ),
                child: const Text(
                  'Submit Review',
                  style: TextStyle(color: Colors.white), // Set the button text color to white
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
