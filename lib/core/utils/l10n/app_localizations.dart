import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_fa.dart';

/// Callers can lookup localized strings with an instance of Translator
/// returned by `Translator.of(context)`.
///
/// Applications need to include `Translator.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: Translator.localizationsDelegates,
///   supportedLocales: Translator.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the Translator.supportedLocales
/// property.
abstract class Translator {
  Translator(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static Translator? of(BuildContext context) {
    return Localizations.of<Translator>(context, Translator);
  }

  static const LocalizationsDelegate<Translator> delegate = _TranslatorDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fa')
  ];

  /// No description provided for @logIn.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get logIn;

  /// No description provided for @mobilePhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get mobilePhoneNumber;

  /// No description provided for @acceptAndContinue.
  ///
  /// In en, this message translates to:
  /// **'تأیید و ادامه'**
  String get acceptAndContinue;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get signUp;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @saved.
  ///
  /// In en, this message translates to:
  /// **'Saved'**
  String get saved;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @logoutMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to logout?'**
  String get logoutMessage;

  /// No description provided for @tours.
  ///
  /// In en, this message translates to:
  /// **'Tours'**
  String get tours;

  /// No description provided for @booking.
  ///
  /// In en, this message translates to:
  /// **'Booking'**
  String get booking;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get firstName;

  /// No description provided for @tourDate.
  ///
  /// In en, this message translates to:
  /// **'Tour date'**
  String get tourDate;

  /// No description provided for @travelersNumber.
  ///
  /// In en, this message translates to:
  /// **'Number of travelers'**
  String get travelersNumber;

  /// No description provided for @myBooking.
  ///
  /// In en, this message translates to:
  /// **'My Bookings'**
  String get myBooking;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit profile'**
  String get editProfile;

  /// No description provided for @general.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get general;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @support.
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get support;

  /// No description provided for @faq.
  ///
  /// In en, this message translates to:
  /// **'Faq'**
  String get faq;

  /// No description provided for @aboutUs.
  ///
  /// In en, this message translates to:
  /// **'About us'**
  String get aboutUs;

  /// No description provided for @contactUs.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs;

  /// No description provided for @contactUsDescription.
  ///
  /// In en, this message translates to:
  /// **'Feel free to contact us during our office hours which are:\nMonday - Friday: 8:00am - 17:00pm\nSaturday & Sunday: Closed'**
  String get contactUsDescription;

  /// No description provided for @telephone.
  ///
  /// In en, this message translates to:
  /// **'Telephone'**
  String get telephone;

  /// No description provided for @banxTelephone.
  ///
  /// In en, this message translates to:
  /// **'+357 25212566'**
  String get banxTelephone;

  /// No description provided for @banxEmail.
  ///
  /// In en, this message translates to:
  /// **'info@banxtravel.org'**
  String get banxEmail;

  /// No description provided for @legal.
  ///
  /// In en, this message translates to:
  /// **'Legal'**
  String get legal;

  /// No description provided for @other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get other;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get logout;

  /// No description provided for @signOut.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get signOut;

  /// No description provided for @termsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms and conditions'**
  String get termsAndConditions;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get privacyPolicy;

  /// No description provided for @supportChat.
  ///
  /// In en, this message translates to:
  /// **'Support chat'**
  String get supportChat;

  /// No description provided for @securityAndPrivacy.
  ///
  /// In en, this message translates to:
  /// **'Security & Privacy'**
  String get securityAndPrivacy;

  /// No description provided for @addNewPaymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Add new payment method'**
  String get addNewPaymentMethod;

  /// No description provided for @enterCurrentPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter current password'**
  String get enterCurrentPassword;

  /// No description provided for @enterNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter new password'**
  String get enterNewPassword;

  /// No description provided for @repeatNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Repeat new password'**
  String get repeatNewPassword;

  /// No description provided for @manageAccessAndDevicesTitle.
  ///
  /// In en, this message translates to:
  /// **'Manage access and devices'**
  String get manageAccessAndDevicesTitle;

  /// No description provided for @manageAccessAndDevicesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Here are your most recent active devices using this account. You can sign out any unfamiliar devices at any time.'**
  String get manageAccessAndDevicesSubtitle;

  /// No description provided for @manageAccessAndDevicesDescription.
  ///
  /// In en, this message translates to:
  /// **'See the most recently active devices on this account. You can sign out any unfamiliar devices at any time.'**
  String get manageAccessAndDevicesDescription;

  /// No description provided for @signOutOfAllDevicesTitle.
  ///
  /// In en, this message translates to:
  /// **'Sign out of all devices'**
  String get signOutOfAllDevicesTitle;

  /// No description provided for @signOutOfAllDevicesDescription.
  ///
  /// In en, this message translates to:
  /// **'You will be logging out of out all devices including this one'**
  String get signOutOfAllDevicesDescription;

  /// No description provided for @signOutOfAllDevicesWarning.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to sign out all devices?'**
  String get signOutOfAllDevicesWarning;

  /// No description provided for @deactivateYourAccountTitle.
  ///
  /// In en, this message translates to:
  /// **'Deactivate your account'**
  String get deactivateYourAccountTitle;

  /// No description provided for @deactivateYourAccountDescription.
  ///
  /// In en, this message translates to:
  /// **'Deactivating your account means that your account will no longer be available. You will not be able to log in and your profile will not be accessible.'**
  String get deactivateYourAccountDescription;

  /// No description provided for @deactivateYourAccountWarning.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to deactivate your account?'**
  String get deactivateYourAccountWarning;

  /// No description provided for @paymentMethodsTitle.
  ///
  /// In en, this message translates to:
  /// **'Payment methods'**
  String get paymentMethodsTitle;

  /// No description provided for @paymentMethodsDescription.
  ///
  /// In en, this message translates to:
  /// **'See your current payment methods, edit, and or delete any current payment methods.'**
  String get paymentMethodsDescription;

  /// No description provided for @paymentMethodsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Your current saved payment methods'**
  String get paymentMethodsSubtitle;

  /// No description provided for @changePasswordTitle.
  ///
  /// In en, this message translates to:
  /// **'Change password'**
  String get changePasswordTitle;

  /// No description provided for @changePasswordDescription.
  ///
  /// In en, this message translates to:
  /// **'Feel like your password isn’t secure enough? or just want a change? Then feel free to do so.'**
  String get changePasswordDescription;

  /// No description provided for @myAccount.
  ///
  /// In en, this message translates to:
  /// **'My account'**
  String get myAccount;

  /// No description provided for @logInOrSignUp.
  ///
  /// In en, this message translates to:
  /// **'Log in or Sign up'**
  String get logInOrSignUp;

  /// No description provided for @amountPaid.
  ///
  /// In en, this message translates to:
  /// **'Amount paid'**
  String get amountPaid;

  /// No description provided for @checkAvailability.
  ///
  /// In en, this message translates to:
  /// **'Check availability'**
  String get checkAvailability;

  /// No description provided for @allTaxesAndFeesIncluded.
  ///
  /// In en, this message translates to:
  /// **'All taxes and fees included'**
  String get allTaxesAndFeesIncluded;

  /// No description provided for @ops.
  ///
  /// In en, this message translates to:
  /// **'Oops!'**
  String get ops;

  /// No description provided for @bookingEmptyMessage.
  ///
  /// In en, this message translates to:
  /// **'Looks like you have no bookings'**
  String get bookingEmptyMessage;

  /// No description provided for @bookingLoginNeededMessage.
  ///
  /// In en, this message translates to:
  /// **'You must be signed in to access bookings'**
  String get bookingLoginNeededMessage;

  /// No description provided for @savedEmptyMessage.
  ///
  /// In en, this message translates to:
  /// **'Tap the heart icon on any activity to save it'**
  String get savedEmptyMessage;

  /// No description provided for @savedLoginNeededMessage.
  ///
  /// In en, this message translates to:
  /// **'Log in to see your saved activities'**
  String get savedLoginNeededMessage;

  /// No description provided for @hello.
  ///
  /// In en, this message translates to:
  /// **'Hello'**
  String get hello;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get lastName;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @dates.
  ///
  /// In en, this message translates to:
  /// **'Dates'**
  String get dates;

  /// No description provided for @timeZone.
  ///
  /// In en, this message translates to:
  /// **'Timezone'**
  String get timeZone;

  /// No description provided for @currency.
  ///
  /// In en, this message translates to:
  /// **'Currency'**
  String get currency;

  /// No description provided for @appearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance;

  /// No description provided for @change.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get change;

  /// No description provided for @alwaysDark.
  ///
  /// In en, this message translates to:
  /// **'Always dark'**
  String get alwaysDark;

  /// No description provided for @alwaysLight.
  ///
  /// In en, this message translates to:
  /// **'Always light'**
  String get alwaysLight;

  /// No description provided for @systemDefaultTitle.
  ///
  /// In en, this message translates to:
  /// **'System default'**
  String get systemDefaultTitle;

  /// No description provided for @systemDefaultDescription.
  ///
  /// In en, this message translates to:
  /// **'Display follows your device system settings'**
  String get systemDefaultDescription;

  /// No description provided for @mySaved.
  ///
  /// In en, this message translates to:
  /// **'My Saved'**
  String get mySaved;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @from.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get from;

  /// No description provided for @free.
  ///
  /// In en, this message translates to:
  /// **'Free'**
  String get free;

  /// No description provided for @explore.
  ///
  /// In en, this message translates to:
  /// **'Explore'**
  String get explore;

  /// No description provided for @travelGuide.
  ///
  /// In en, this message translates to:
  /// **'Travel Guide'**
  String get travelGuide;

  /// No description provided for @results.
  ///
  /// In en, this message translates to:
  /// **'Results'**
  String get results;

  /// No description provided for @cyprusExperiences.
  ///
  /// In en, this message translates to:
  /// **'Experiences in Cyprus'**
  String get cyprusExperiences;

  /// No description provided for @noResults.
  ///
  /// In en, this message translates to:
  /// **'No results'**
  String get noResults;

  /// No description provided for @noResultsMessage.
  ///
  /// In en, this message translates to:
  /// **'We searched everywhere but we couldn’t find any results'**
  String get noResultsMessage;

  /// No description provided for @searchNoResults.
  ///
  /// In en, this message translates to:
  /// **'We searched everywhere but we could’t find any results'**
  String get searchNoResults;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get forgotPassword;

  /// No description provided for @enterValidEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email address'**
  String get enterValidEmail;

  /// No description provided for @willSendPassResetEmail.
  ///
  /// In en, this message translates to:
  /// **'We’ll send you a password reset email'**
  String get willSendPassResetEmail;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get started'**
  String get getStarted;

  /// No description provided for @resetPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPassword;

  /// No description provided for @newPassword.
  ///
  /// In en, this message translates to:
  /// **'New password'**
  String get newPassword;

  /// No description provided for @enableLocation.
  ///
  /// In en, this message translates to:
  /// **'Enable location'**
  String get enableLocation;

  /// No description provided for @logInExperienceTitle.
  ///
  /// In en, this message translates to:
  /// **'Log in for a better experience'**
  String get logInExperienceTitle;

  /// No description provided for @doNotHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Don’t have an account?'**
  String get doNotHaveAccount;

  /// No description provided for @nextAdventureTitle.
  ///
  /// In en, this message translates to:
  /// **'Your next adventure is one search away'**
  String get nextAdventureTitle;

  /// No description provided for @launchScreenLoginTitle.
  ///
  /// In en, this message translates to:
  /// **'Book incredible experiences and things to do'**
  String get launchScreenLoginTitle;

  /// No description provided for @launchScreenGPSScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Enable your location to easily find and explore near you'**
  String get launchScreenGPSScreenTitle;

  /// No description provided for @launchScreenFirstPageTitle.
  ///
  /// In en, this message translates to:
  /// **'The world is yours to explore.'**
  String get launchScreenFirstPageTitle;

  /// No description provided for @createAnAccountTitle.
  ///
  /// In en, this message translates to:
  /// **'Create an account'**
  String get createAnAccountTitle;

  /// No description provided for @createAccountTitle.
  ///
  /// In en, this message translates to:
  /// **'Create account'**
  String get createAccountTitle;

  /// No description provided for @alreadyHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAnAccount;

  /// No description provided for @signUpDescription.
  ///
  /// In en, this message translates to:
  /// **'Sign up for a better experience and more'**
  String get signUpDescription;

  /// No description provided for @emailValidationText.
  ///
  /// In en, this message translates to:
  /// **'Your email cannot be empty and must contain @ and .'**
  String get emailValidationText;

  /// No description provided for @nextAdventureWaitingText.
  ///
  /// In en, this message translates to:
  /// **'Your Next \nAdventure Is Waiting'**
  String get nextAdventureWaitingText;

  /// No description provided for @passwordValidationText.
  ///
  /// In en, this message translates to:
  /// **'Password must contain atleast 8 characters and 1 capital letter'**
  String get passwordValidationText;

  /// No description provided for @emptyValidationText.
  ///
  /// In en, this message translates to:
  /// **'Emptiness Error'**
  String get emptyValidationText;

  /// No description provided for @termsAndConditionsDescription.
  ///
  /// In en, this message translates to:
  /// **'By creating an account, you therefore agree to our Terms & Conditions, Privacy Policy and Agreement with GPbanx'**
  String get termsAndConditionsDescription;
}

class _TranslatorDelegate extends LocalizationsDelegate<Translator> {
  const _TranslatorDelegate();

  @override
  Future<Translator> load(Locale locale) {
    return SynchronousFuture<Translator>(lookupTranslator(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'fa'].contains(locale.languageCode);

  @override
  bool shouldReload(_TranslatorDelegate old) => false;
}

Translator lookupTranslator(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return TranslatorEn();
    case 'fa': return TranslatorFa();
  }

  throw FlutterError(
    'Translator.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
