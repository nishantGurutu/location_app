import 'package:shared_preferences/shared_preferences.dart';

class StorageHelper {
  static SharedPreferences? _preferences;

  static Future<void> initialize() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static Future<void> clear() async {
    await _preferences?.clear();
  }

  // Keys
  static const String _keyId = "id";
  static const String _keyRoleId = "role_id";
  static const String _keyDepartmentId = "department_id";
  static const String _keyDesignationId = "designation_id";
  static const String _keyName = "name";
  static const String _keyEmail = "email";
  static const String _keyPhone = "phone";
  static const String _keyGender = "gender";
  static const String _keyDob = "dob";
  static const String _keyImage = "profile_pic";
  static const String _keyCompanyName = "company_name";
  static const String _keyDesignation = "designation";
  static const String _keyDepartment = "department";
  static const String _keyEmpNo = "emp_no";
  static const String _keyAddress = "street_address";
  static const String _keyCity = "city";
  static const String _keyState = "state";
  static const String _keyCountry = "country";
  static const String _keyPincode = "pincode";
  static const String _keyBloodGroup = "blood_group";
  static const String _keyEducation = "education";
  static const String _keyReportingPerson = "reporting_person";
  static const String _keyToken = "token"; // login API token
  static const String _keyTokenType = "token_type";
  static const String _userLocationAddress = "location_address";
  static const String _keyUserLocationName = "locationName";

  // Set methods
  static Future<void> setId(int id) async =>
      await _preferences?.setInt(_keyId, id);

  static Future<void> setRoleId(String roleId) async =>
      await _preferences?.setString(_keyRoleId, roleId);

  static Future<void> setDepartmentId(int departmentId) async =>
      await _preferences?.setInt(_keyDepartmentId, departmentId);

  static Future<void> setDesignationId(int designationId) async =>
      await _preferences?.setInt(_keyDesignationId, designationId);

  static Future<void> setName(String name) async =>
      await _preferences?.setString(_keyName, name);

  static Future<void> setEmail(String email) async =>
      await _preferences?.setString(_keyEmail, email);

  static Future<void> setPhone(String phone) async =>
      await _preferences?.setString(_keyPhone, phone);

  static Future<void> setGender(String gender) async =>
      await _preferences?.setString(_keyGender, gender);

  static Future<void> setDob(String dob) async =>
      await _preferences?.setString(_keyDob, dob);

  static Future<void> setImage(String image) async =>
      await _preferences?.setString(_keyImage, image);

  static Future<void> setCompanyName(String companyName) async =>
      await _preferences?.setString(_keyCompanyName, companyName);

  static Future<void> setDesignation(String designation) async =>
      await _preferences?.setString(_keyDesignation, designation);

  static Future<void> setDepartment(String department) async =>
      await _preferences?.setString(_keyDepartment, department);

  static Future<void> setEmpNo(String empNo) async =>
      await _preferences?.setString(_keyEmpNo, empNo);

  static Future<void> setAddress(String address) async =>
      await _preferences?.setString(_keyAddress, address);

  static Future<void> setCity(String city) async =>
      await _preferences?.setString(_keyCity, city);

  static Future<void> setState(String state) async =>
      await _preferences?.setString(_keyState, state);

  static Future<void> setCountry(String country) async =>
      await _preferences?.setString(_keyCountry, country);

  static Future<void> setPincode(String pincode) async =>
      await _preferences?.setString(_keyPincode, pincode);

  static Future<void> setBloodGroup(String bloodGroup) async =>
      await _preferences?.setString(_keyBloodGroup, bloodGroup);

  static Future<void> setEducation(String education) async =>
      await _preferences?.setString(_keyEducation, education);

  static Future<void> setReportingPerson(String reportingPerson) async =>
      await _preferences?.setString(_keyReportingPerson, reportingPerson);

  static Future<void> setToken(String token) async =>
      await _preferences?.setString(_keyToken, token);

  static Future<void> setTokenType(String tokenType) async =>
      await _preferences?.setString(_keyTokenType, tokenType);

  static Future<void> setUserLocation(String locationAddress) async =>
      await _preferences?.setString(_userLocationAddress, locationAddress);
  static Future<void> setUserLocationName(String userLocation) async =>
      await _preferences?.setString(_keyUserLocationName, userLocation);

  // Get methods
  static int? getId() => _preferences?.getInt(_keyId);
  static String? getRoleId() => _preferences?.getString(_keyRoleId);
  static int? getDepartmentId() => _preferences?.getInt(_keyDepartmentId);
  static int? getDesignationId() => _preferences?.getInt(_keyDesignationId);
  static String? getName() => _preferences?.getString(_keyName);
  static String? getEmail() => _preferences?.getString(_keyEmail);
  static String? getPhone() => _preferences?.getString(_keyPhone);
  static String? getGender() => _preferences?.getString(_keyGender);
  static String? getDob() => _preferences?.getString(_keyDob);
  static String? getImage() => _preferences?.getString(_keyImage);
  static String? getCompanyName() => _preferences?.getString(_keyCompanyName);
  static String? getDesignation() => _preferences?.getString(_keyDesignation);
  static String? getDepartment() => _preferences?.getString(_keyDepartment);
  static String? getEmpNo() => _preferences?.getString(_keyEmpNo);
  static String? getAddress() => _preferences?.getString(_keyAddress);
  static String? getCity() => _preferences?.getString(_keyCity);
  static String? getState() => _preferences?.getString(_keyState);
  static String? getCountry() => _preferences?.getString(_keyCountry);
  static String? getPincode() => _preferences?.getString(_keyPincode);
  static String? getBloodGroup() => _preferences?.getString(_keyBloodGroup);
  static String? getEducation() => _preferences?.getString(_keyEducation);
  static String? getReportingPerson() =>
      _preferences?.getString(_keyReportingPerson);
  static String? getToken() => _preferences?.getString(_keyToken);
  static String? getTokenType() => _preferences?.getString(_keyTokenType);
  static dynamic getUserLocationName() =>
      _preferences?.getString(_keyUserLocationName);
  static dynamic getUserLocation() =>
      _preferences?.getString(_userLocationAddress);
}
