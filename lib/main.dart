import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_calendar/calendar.dart';

// import 'package:intl/intl.dart';
import 'package:http/http.dart';
import 'package:http/io_client.dart';
import 'package:google_sign_in/google_sign_in.dart';

// import 'package:googleapis_auth/googleapis_auth.dart';
// import 'package:googleapis/abusiveexperiencereport/v1.dart';
// import 'package:googleapis/acceleratedmobilepageurl/v1.dart';
// import 'package:googleapis/accessapproval/v1.dart';
// import 'package:googleapis/accesscontextmanager/v1.dart';
// import 'package:googleapis/adexperiencereport/v1.dart';
// import 'package:googleapis/admin/datatransfer_v1.dart';
// import 'package:googleapis/admin/directory_v1.dart';
// import 'package:googleapis/admin/reports_v1.dart';
// import 'package:googleapis/admob/v1.dart';
// import 'package:googleapis/adsense/v2.dart';
// import 'package:googleapis/adsensehost/v4_1.dart';
// import 'package:googleapis/analytics/v3.dart';
// import 'package:googleapis/analyticsreporting/v4.dart';
// import 'package:googleapis/androiddeviceprovisioning/v1.dart';
// import 'package:googleapis/androidenterprise/v1.dart';
// import 'package:googleapis/androidmanagement/v1.dart';
// import 'package:googleapis/androidpublisher/v3.dart';
// import 'package:googleapis/apigateway/v1.dart';
// import 'package:googleapis/apigee/v1.dart';
// import 'package:googleapis/apigeeregistry/v1.dart';
// import 'package:googleapis/apikeys/v2.dart';
// import 'package:googleapis/appengine/v1.dart';
// import 'package:googleapis/artifactregistry/v1.dart';
// import 'package:googleapis/assuredworkloads/v1.dart';
// import 'package:googleapis/authorizedbuyersmarketplace/v1.dart';
// import 'package:googleapis/baremetalsolution/v1.dart';
// import 'package:googleapis/baremetalsolution/v2.dart';
// import 'package:googleapis/beyondcorp/v1.dart';
// import 'package:googleapis/bigquery/v2.dart';
// import 'package:googleapis/bigquerydatatransfer/v1.dart';
// import 'package:googleapis/bigqueryreservation/v1.dart';
// import 'package:googleapis/bigtableadmin/v2.dart';
// import 'package:googleapis/billingbudgets/v1.dart';
// import 'package:googleapis/binaryauthorization/v1.dart';
// import 'package:googleapis/blogger/v3.dart';
// import 'package:googleapis/books/v1.dart';
// import 'package:googleapis/businessprofileperformance/v1.dart';
import 'package:googleapis/calendar/v3.dart' hide Colors;

// import 'package:googleapis/certificatemanager/v1.dart';
// import 'package:googleapis/chat/v1.dart';
// import 'package:googleapis/chromemanagement/v1.dart';
// import 'package:googleapis/chromepolicy/v1.dart';
// import 'package:googleapis/chromeuxreport/v1.dart';
// import 'package:googleapis/civicinfo/v2.dart';
// import 'package:googleapis/classroom/v1.dart';
// import 'package:googleapis/cloudasset/v1.dart';
// import 'package:googleapis/cloudbilling/v1.dart';
// import 'package:googleapis/cloudbuild/v1.dart';
// import 'package:googleapis/cloudchannel/v1.dart';
// import 'package:googleapis/clouddebugger/v2.dart';
// import 'package:googleapis/clouddeploy/v1.dart';
// import 'package:googleapis/cloudfunctions/v1.dart';
// import 'package:googleapis/cloudfunctions/v2.dart';
// import 'package:googleapis/cloudidentity/v1.dart';
// import 'package:googleapis/cloudiot/v1.dart';
// import 'package:googleapis/cloudkms/v1.dart';
// import 'package:googleapis/cloudprofiler/v2.dart';
// import 'package:googleapis/cloudresourcemanager/v1.dart';
// import 'package:googleapis/cloudresourcemanager/v2.dart';
// import 'package:googleapis/cloudresourcemanager/v3.dart';
// import 'package:googleapis/cloudscheduler/v1.dart';
// import 'package:googleapis/cloudsearch/v1.dart';
// import 'package:googleapis/cloudshell/v1.dart';
// import 'package:googleapis/cloudtasks/v2.dart';
// import 'package:googleapis/cloudtrace/v2.dart';
// import 'package:googleapis/composer/v1.dart';
// import 'package:googleapis/compute/v1.dart';
// import 'package:googleapis/connectors/v1.dart';
// import 'package:googleapis/connectors/v2.dart';
// import 'package:googleapis/contactcenterinsights/v1.dart';
// import 'package:googleapis/container/v1.dart';
// import 'package:googleapis/containeranalysis/v1.dart';
// import 'package:googleapis/content/v2_1.dart';
// import 'package:googleapis/customsearch/v1.dart';
// import 'package:googleapis/datacatalog/v1.dart';
// import 'package:googleapis/datafusion/v1.dart';
// import 'package:googleapis/datamigration/v1.dart';
// import 'package:googleapis/datapipelines/v1.dart';
// import 'package:googleapis/dataplex/v1.dart';
// import 'package:googleapis/dataproc/v1.dart';
// import 'package:googleapis/datastore/v1.dart';
// import 'package:googleapis/datastream/v1.dart';
// import 'package:googleapis/deploymentmanager/v2.dart';
// import 'package:googleapis/dfareporting/v3_5.dart';
// import 'package:googleapis/dfareporting/v4.dart';
// import 'package:googleapis/dialogflow/v2.dart';
// import 'package:googleapis/dialogflow/v3.dart';
// import 'package:googleapis/digitalassetlinks/v1.dart';
// import 'package:googleapis/discovery/v1.dart';
// import 'package:googleapis/displayvideo/v1.dart';
// import 'package:googleapis/dlp/v2.dart';
// import 'package:googleapis/dns/v1.dart';
// import 'package:googleapis/docs/v1.dart';
// import 'package:googleapis/documentai/v1.dart';
// import 'package:googleapis/domains/v1.dart';
// import 'package:googleapis/domainsrdap/v1.dart';
// import 'package:googleapis/doubleclickbidmanager/v1_1.dart';
// import 'package:googleapis/doubleclickbidmanager/v2.dart';
// import 'package:googleapis/doubleclicksearch/v2.dart';
// import 'package:googleapis/drive/v2.dart';
// import 'package:googleapis/drive/v3.dart';
// import 'package:googleapis/driveactivity/v2.dart';
// import 'package:googleapis/drivelabels/v2.dart';
// import 'package:googleapis/essentialcontacts/v1.dart';
// import 'package:googleapis/eventarc/v1.dart';
// import 'package:googleapis/fcm/v1.dart';
// import 'package:googleapis/file/v1.dart';
// import 'package:googleapis/firebaseappcheck/v1.dart';
// import 'package:googleapis/firebasedynamiclinks/v1.dart';
// import 'package:googleapis/firebasehosting/v1.dart';
// import 'package:googleapis/firebaseml/v1.dart';
// import 'package:googleapis/firebaseremoteconfig/v1.dart';
// import 'package:googleapis/firebaserules/v1.dart';
// import 'package:googleapis/firestore/v1.dart';
// import 'package:googleapis/fitness/v1.dart';
// import 'package:googleapis/forms/v1.dart';
// import 'package:googleapis/games/v1.dart';
// import 'package:googleapis/gamesconfiguration/v1configuration.dart';
// import 'package:googleapis/gameservices/v1.dart';
// import 'package:googleapis/gamesmanagement/v1management.dart';
// import 'package:googleapis/gkebackup/v1.dart';
// import 'package:googleapis/gkehub/v1.dart';
// import 'package:googleapis/gmail/v1.dart';
// import 'package:googleapis/gmailpostmastertools/v1.dart';
// import 'package:googleapis/groupsmigration/v1.dart';
// import 'package:googleapis/groupssettings/v1.dart';
// import 'package:googleapis/healthcare/v1.dart';
// import 'package:googleapis/homegraph/v1.dart';
// import 'package:googleapis/iam/v1.dart';
// import 'package:googleapis/iamcredentials/v1.dart';
// import 'package:googleapis/iap/v1.dart';
// import 'package:googleapis/identitytoolkit/v3.dart';
// import 'package:googleapis/ids/v1.dart';
// import 'package:googleapis/indexing/v3.dart';
// import 'package:googleapis/jobs/v3.dart';
// import 'package:googleapis/jobs/v4.dart';
// import 'package:googleapis/keep/v1.dart';
// import 'package:googleapis/kgsearch/v1.dart';
// import 'package:googleapis/language/v1.dart';
// import 'package:googleapis/libraryagent/v1.dart';
// import 'package:googleapis/licensing/v1.dart';
// import 'package:googleapis/localservices/v1.dart';
// import 'package:googleapis/logging/v2.dart';
// import 'package:googleapis/managedidentities/v1.dart';
// import 'package:googleapis/manufacturers/v1.dart';
// import 'package:googleapis/memcache/v1.dart';
// import 'package:googleapis/ml/v1.dart';
// import 'package:googleapis/monitoring/v3.dart';
// import 'package:googleapis/mybusinessaccountmanagement/v1.dart';
// import 'package:googleapis/mybusinessbusinesscalls/v1.dart';
// import 'package:googleapis/mybusinessbusinessinformation/v1.dart';
// import 'package:googleapis/mybusinesslodging/v1.dart';
// import 'package:googleapis/mybusinessnotifications/v1.dart';
// import 'package:googleapis/mybusinessplaceactions/v1.dart';
// import 'package:googleapis/mybusinessqanda/v1.dart';
// import 'package:googleapis/mybusinessverifications/v1.dart';
// import 'package:googleapis/networkconnectivity/v1.dart';
// import 'package:googleapis/networkmanagement/v1.dart';
// import 'package:googleapis/networksecurity/v1.dart';
// import 'package:googleapis/networkservices/v1.dart';
// import 'package:googleapis/notebooks/v1.dart';
// import 'package:googleapis/oauth2/v2.dart';
// import 'package:googleapis/ondemandscanning/v1.dart';
// import 'package:googleapis/orgpolicy/v2.dart';
// import 'package:googleapis/osconfig/v1.dart';
// import 'package:googleapis/oslogin/v1.dart';
// import 'package:googleapis/pagespeedonline/v5.dart';
// import 'package:googleapis/paymentsresellersubscription/v1.dart';
// import 'package:googleapis/people/v1.dart';
// import 'package:googleapis/photoslibrary/v1.dart';
// import 'package:googleapis/playcustomapp/v1.dart';
// import 'package:googleapis/playintegrity/v1.dart';
// import 'package:googleapis/policyanalyzer/v1.dart';
// import 'package:googleapis/policysimulator/v1.dart';
// import 'package:googleapis/policytroubleshooter/v1.dart';
// import 'package:googleapis/privateca/v1.dart';
// import 'package:googleapis/pubsub/v1.dart';
// import 'package:googleapis/pubsublite/v1.dart';
// import 'package:googleapis/realtimebidding/v1.dart';
// import 'package:googleapis/recaptchaenterprise/v1.dart';
// import 'package:googleapis/recommender/v1.dart';
// import 'package:googleapis/redis/v1.dart';
// import 'package:googleapis/reseller/v1.dart';
// import 'package:googleapis/resourcesettings/v1.dart';
// import 'package:googleapis/retail/v2.dart';
// import 'package:googleapis/run/v1.dart';
// import 'package:googleapis/run/v2.dart';
// import 'package:googleapis/runtimeconfig/v1.dart';
// import 'package:googleapis/safebrowsing/v4.dart';
// import 'package:googleapis/script/v1.dart';
// import 'package:googleapis/searchconsole/v1.dart';
// import 'package:googleapis/secretmanager/v1.dart';
// import 'package:googleapis/securitycenter/v1.dart';
// import 'package:googleapis/serviceconsumermanagement/v1.dart';
// import 'package:googleapis/servicecontrol/v1.dart';
// import 'package:googleapis/servicecontrol/v2.dart';
// import 'package:googleapis/servicedirectory/v1.dart';
// import 'package:googleapis/servicemanagement/v1.dart';
// import 'package:googleapis/servicenetworking/v1.dart';
// import 'package:googleapis/serviceusage/v1.dart';
// import 'package:googleapis/shared.dart';
// import 'package:googleapis/sheets/v4.dart';
// import 'package:googleapis/siteverification/v1.dart';
// import 'package:googleapis/slides/v1.dart';
// import 'package:googleapis/smartdevicemanagement/v1.dart';
// import 'package:googleapis/sourcerepo/v1.dart';
// import 'package:googleapis/spanner/v1.dart';
// import 'package:googleapis/speech/v1.dart';
// import 'package:googleapis/storage/v1.dart';
// import 'package:googleapis/storagetransfer/v1.dart';
// import 'package:googleapis/streetviewpublish/v1.dart';
// import 'package:googleapis/sts/v1.dart';
// import 'package:googleapis/tagmanager/v1.dart';
// import 'package:googleapis/tagmanager/v2.dart';
// import 'package:googleapis/tasks/v1.dart';
// import 'package:googleapis/testing/v1.dart';
// import 'package:googleapis/texttospeech/v1.dart';
// import 'package:googleapis/tpu/v1.dart';
// import 'package:googleapis/trafficdirector/v2.dart';
// import 'package:googleapis/transcoder/v1.dart';
// import 'package:googleapis/translate/v3.dart';
// import 'package:googleapis/vault/v1.dart';
// import 'package:googleapis/verifiedaccess/v1.dart';
// import 'package:googleapis/verifiedaccess/v2.dart';
// import 'package:googleapis/versionhistory/v1.dart';
// import 'package:googleapis/videointelligence/v1.dart';
// import 'package:googleapis/vision/v1.dart';
// import 'package:googleapis/vmmigration/v1.dart';
// import 'package:googleapis/webfonts/v1.dart';
// import 'package:googleapis/webrisk/v1.dart';
// import 'package:googleapis/websecurityscanner/v1.dart';
// import 'package:googleapis/workflowexecutions/v1.dart';
// import 'package:googleapis/workflows/v1.dart';
// import 'package:googleapis/youtube/v3.dart';
// import 'package:googleapis/youtubeanalytics/v2.dart';
// import 'package:googleapis/youtubereporting/v1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'カレンダのサンプル',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    // clientId: '779890736629-ffee4rgvu6lt6v87dnlg2dn5sulvvmot.apps.googleusercontent.com',
    scopes: <String>[CalendarApi.calendarScope],
  );

  GoogleSignInAccount? _currentUser;

  @override
  void initState() {
    print("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% initState()");
    super.initState();
    _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
      setState(() {
        _currentUser = account;
      });
      print("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% onCurrentUserChanged");
      if (_currentUser != null) {
        print("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" + _currentUser!.email);
        //getGoogleEventsData();
      }
    });
    _googleSignIn.signInSilently();
  }

  Future<List<Event>> getGoogleEventsData() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

    final List<Event> appointments = <Event>[];
    return appointments;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('サンプルタイトル'),
      ),
      body: FutureBuilder(
        future: getGoogleEventsData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return const Text(
            'ダミーテキスト',
          );
        },
      ),
    );
  }
}

class GoogleDataSource extends CalendarDataSource {
  GoogleDataSource({required List<Event> events}) {
    this.appointments = events;
  }

  @override
  DateTime getStartTime(int index) {
    final Event event = appointments![index];
    return event.start!.date ?? event.start!.dateTime!.toLocal();
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].start.date != null;
  }

  @override
  DateTime getEndTime(int index) {
    final Event event = appointments![index];
    return event.endTimeUnspecified != null && event!.endTimeUnspecified!
        ? (event.start!.date ?? event.start!.dateTime!.toLocal())
        : (event.end!.date != null
            ? event.end!.date!.add(Duration(days: -1))
            : event.end!.dateTime!.toLocal());
  }

  @override
  String getLocation(int index) {
    return appointments![index].location;
  }

  @override
  String getNotes(int index) {
    return appointments![index].description;
  }

  @override
  String getSubject(int index) {
    final Event event = appointments![index];
    return event.summary == null || event.summary!.isEmpty
        ? 'No Title'
        : event.summary!;
  }
}

class GoogleAPIClient extends IOClient {
  final Map<String, String> _headers;

  GoogleAPIClient(this._headers) : super();

  @override
  Future<IOStreamedResponse> send(BaseRequest request) =>
      super.send(request..headers.addAll(_headers));

  @override
  Future<Response> head(Uri url, {Map<String, String>? headers}) =>
      super.head(url,
          headers: (headers != null ? (headers..addAll(_headers)) : headers));
}
