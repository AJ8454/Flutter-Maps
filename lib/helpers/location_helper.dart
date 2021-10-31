//<meta-data android:name="com.google.android.geo.API_KEY" android:value="AIzaSyD7f-sDIn9iIgETOmjRtZOosoaUU955i1g"/>
// ignore: constant_identifier_names
const GOOGLE_API_KEY = 'AIzaSyD7f-sDIn9iIgETOmjRtZOosoaUU955i1g';

class LocationHelper {
  static String? generateLocationPreviewImage(
      {double? latitude, double? longitude}) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=$latitude!,$longitude&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:C%7C$latitude,$longitude&key=$GOOGLE_API_KEY';
  }
}
