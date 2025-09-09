class LoginModel {
  bool? success;
  Data? data;
  String? message;
  List<Notify>? notify;
  Pendings? pendings;

  LoginModel({
    this.success,
    this.data,
    this.message,
    this.notify,
    this.pendings,
  });

  LoginModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
    if (json['notify'] != null) {
      notify = <Notify>[];
      json['notify'].forEach((v) {
        notify!.add(new Notify.fromJson(v));
      });
    }
    pendings = json['pendings'] != null
        ? new Pendings.fromJson(json['pendings'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    if (this.notify != null) {
      data['notify'] = this.notify!.map((v) => v.toJson()).toList();
    }
    if (this.pendings != null) {
      data['pendings'] = this.pendings!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? roleId;
  String? parentId;
  String? createdBy;
  String? userType;
  int? designationId;
  int? departmentId;
  String? empNo;
  String? name;
  String? dob;
  String? fatherName;
  dynamic empName;
  String? doj;
  String? performaInvoiceSent;
  String? termsOfServiceAcceptDatetime;
  String? termsOfServiceAccept;
  String? policyAccepted;
  String? policyAcceptedDatetime;
  String? probationPeriod;
  String? probationEndDate;
  dynamic dateOfRelieving;
  dynamic resignationDate;
  dynamic fnfDate;
  dynamic gratuityEligible;
  dynamic gratuityAmount;
  dynamic gratuityYears;
  String? gender;
  String? phone;
  String? companyName;
  String? email;
  dynamic emailVerifiedAt;
  String? forceChangePassword;
  String? resetPasswordToken;
  String? nightShift;
  String? reportingPerson;
  String? designation;
  String? department;
  String? checkAttendance;
  dynamic aadharCardDoc;
  String? aadharCard;
  dynamic panCardDoc;
  String? panCard;
  dynamic pfNo;
  dynamic pfDoj;
  dynamic esicNo;
  dynamic esicDoj;
  dynamic landmark;
  String? country;
  String? state;
  String? pincode;
  String? city;
  String? streetAddress;
  String? timezone;
  String? userStatus;
  String? otStatus;
  String? attendanceAllowanceStatus;
  String? createdAt;
  String? updatedAt;
  String? bloodGroup;
  String? education;
  String? isMetroCity;
  dynamic branch;
  dynamic floor;
  dynamic deletedAt;
  int? companyId;
  String? profilePic;
  Company? company;
  List<Permissions>? permissions;
  SiteMenu? siteMenu;
  String? token;
  int? childCount;
  List<dynamic>? teams; // ✅ fixed
  int? age;
  String? departmentName;
  String? designationName;
  DepartmentsRecords? departmentsRecords;
  DesignationsRecords? designationsRecords;

  Data({
    this.id,
    this.roleId,
    this.parentId,
    this.createdBy,
    this.userType,
    this.designationId,
    this.departmentId,
    this.empNo,
    this.name,
    this.dob,
    this.fatherName,
    this.empName,
    this.doj,
    this.performaInvoiceSent,
    this.termsOfServiceAcceptDatetime,
    this.termsOfServiceAccept,
    this.policyAccepted,
    this.policyAcceptedDatetime,
    this.probationPeriod,
    this.probationEndDate,
    this.dateOfRelieving,
    this.resignationDate,
    this.fnfDate,
    this.gratuityEligible,
    this.gratuityAmount,
    this.gratuityYears,
    this.gender,
    this.phone,
    this.companyName,
    this.email,
    this.emailVerifiedAt,
    this.forceChangePassword,
    this.resetPasswordToken,
    this.nightShift,
    this.reportingPerson,
    this.designation,
    this.department,
    this.checkAttendance,
    this.aadharCardDoc,
    this.aadharCard,
    this.panCardDoc,
    this.panCard,
    this.pfNo,
    this.pfDoj,
    this.esicNo,
    this.esicDoj,
    this.landmark,
    this.country,
    this.state,
    this.pincode,
    this.city,
    this.streetAddress,
    this.timezone,
    this.userStatus,
    this.otStatus,
    this.attendanceAllowanceStatus,
    this.createdAt,
    this.updatedAt,
    this.bloodGroup,
    this.education,
    this.isMetroCity,
    this.branch,
    this.floor,
    this.deletedAt,
    this.companyId,
    this.profilePic,
    this.company,
    this.permissions,
    this.siteMenu,
    this.token,
    this.childCount,
    this.teams,
    this.age,
    this.departmentName,
    this.designationName,
    this.departmentsRecords,
    this.designationsRecords,
  });

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    roleId = json['role_id'];
    parentId = json['parent_id'];
    createdBy = json['created_by'];
    userType = json['user_type'];
    designationId = json['designation_id'];
    departmentId = json['department_id'];
    empNo = json['emp_no'];
    name = json['name'];
    dob = json['dob'];
    fatherName = json['father_name'];
    empName = json['emp_name'];
    doj = json['doj'];
    performaInvoiceSent = json['performa_invoice_sent'];
    termsOfServiceAcceptDatetime = json['terms_of_service_accept_datetime'];
    termsOfServiceAccept = json['terms_of_service_accept'];
    policyAccepted = json['policy_accepted'];
    policyAcceptedDatetime = json['policy_accepted_datetime'];
    probationPeriod = json['probation_period'];
    probationEndDate = json['probation_end_date'];
    dateOfRelieving = json['date_of_relieving'];
    resignationDate = json['resignation_date'];
    fnfDate = json['fnf_date'];
    gratuityEligible = json['gratuity_eligible'];
    gratuityAmount = json['gratuity_amount'];
    gratuityYears = json['gratuity_years'];
    gender = json['gender'];
    phone = json['phone'];
    companyName = json['company_name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    forceChangePassword = json['force_change_password'];
    resetPasswordToken = json['reset_password_token'];
    nightShift = json['night_shift'];
    reportingPerson = json['reporting_person'];
    designation = json['designation'];
    department = json['department'];
    checkAttendance = json['check_attendance'];
    aadharCardDoc = json['aadhar_card_doc'];
    aadharCard = json['aadhar_card'];
    panCardDoc = json['pan_card_doc'];
    panCard = json['pan_card'];
    pfNo = json['pf_no'];
    pfDoj = json['pf_doj'];
    esicNo = json['esic_no'];
    esicDoj = json['esic_doj'];
    landmark = json['landmark'];
    country = json['country'];
    state = json['state'];
    pincode = json['pincode'];
    city = json['city'];
    streetAddress = json['street_address'];
    timezone = json['timezone'];
    userStatus = json['user_status'];
    otStatus = json['ot_status'];
    attendanceAllowanceStatus = json['attendance_allowance_status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    bloodGroup = json['blood_group'];
    education = json['education'];
    isMetroCity = json['is_metro_city'];
    branch = json['branch'];
    floor = json['floor'];
    deletedAt = json['deleted_at'];
    companyId = json['company_id'];
    profilePic = json['profile_pic'];
    company = json['company'] != null
        ? new Company.fromJson(json['company'])
        : null;
    if (json['permissions'] != null) {
      permissions = <Permissions>[];
      json['permissions'].forEach((v) {
        permissions!.add(new Permissions.fromJson(v));
      });
    }
    siteMenu = json['site_menu'] != null
        ? new SiteMenu.fromJson(json['site_menu'])
        : null;
    token = json['token'];
    childCount = json['child_count'];
    if (json['teams'] != null) {
      teams = <dynamic>[]; // ✅ fixed
      json['teams'].forEach((v) {
        teams!.add(v); // ✅ just add value directly
      });
    }
    age = json['age'];
    departmentName = json['department_name'];
    designationName = json['designation_name'];
    departmentsRecords = json['departments_records'] != null
        ? new DepartmentsRecords.fromJson(json['departments_records'])
        : null;
    designationsRecords = json['designations_records'] != null
        ? new DesignationsRecords.fromJson(json['designations_records'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['role_id'] = this.roleId;
    data['parent_id'] = this.parentId;
    data['created_by'] = this.createdBy;
    data['user_type'] = this.userType;
    data['designation_id'] = this.designationId;
    data['department_id'] = this.departmentId;
    data['emp_no'] = this.empNo;
    data['name'] = this.name;
    data['dob'] = this.dob;
    data['father_name'] = this.fatherName;
    data['emp_name'] = this.empName;
    data['doj'] = this.doj;
    data['performa_invoice_sent'] = this.performaInvoiceSent;
    data['terms_of_service_accept_datetime'] =
        this.termsOfServiceAcceptDatetime;
    data['terms_of_service_accept'] = this.termsOfServiceAccept;
    data['policy_accepted'] = this.policyAccepted;
    data['policy_accepted_datetime'] = this.policyAcceptedDatetime;
    data['probation_period'] = this.probationPeriod;
    data['probation_end_date'] = this.probationEndDate;
    data['date_of_relieving'] = this.dateOfRelieving;
    data['resignation_date'] = this.resignationDate;
    data['fnf_date'] = this.fnfDate;
    data['gratuity_eligible'] = this.gratuityEligible;
    data['gratuity_amount'] = this.gratuityAmount;
    data['gratuity_years'] = this.gratuityYears;
    data['gender'] = this.gender;
    data['phone'] = this.phone;
    data['company_name'] = this.companyName;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['force_change_password'] = this.forceChangePassword;
    data['reset_password_token'] = this.resetPasswordToken;
    data['night_shift'] = this.nightShift;
    data['reporting_person'] = this.reportingPerson;
    data['designation'] = this.designation;
    data['department'] = this.department;
    data['check_attendance'] = this.checkAttendance;
    data['aadhar_card_doc'] = this.aadharCardDoc;
    data['aadhar_card'] = this.aadharCard;
    data['pan_card_doc'] = this.panCardDoc;
    data['pan_card'] = this.panCard;
    data['pf_no'] = this.pfNo;
    data['pf_doj'] = this.pfDoj;
    data['esic_no'] = this.esicNo;
    data['esic_doj'] = this.esicDoj;
    data['landmark'] = this.landmark;
    data['country'] = this.country;
    data['state'] = this.state;
    data['pincode'] = this.pincode;
    data['city'] = this.city;
    data['street_address'] = this.streetAddress;
    data['timezone'] = this.timezone;
    data['user_status'] = this.userStatus;
    data['ot_status'] = this.otStatus;
    data['attendance_allowance_status'] = this.attendanceAllowanceStatus;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['blood_group'] = this.bloodGroup;
    data['education'] = this.education;
    data['is_metro_city'] = this.isMetroCity;
    data['branch'] = this.branch;
    data['floor'] = this.floor;
    data['deleted_at'] = this.deletedAt;
    data['company_id'] = this.companyId;
    data['profile_pic'] = this.profilePic;
    if (this.company != null) {
      data['company'] = this.company!.toJson();
    }
    if (this.permissions != null) {
      data['permissions'] = this.permissions!.map((v) => v.toJson()).toList();
    }
    if (this.siteMenu != null) {
      data['site_menu'] = this.siteMenu!.toJson();
    }
    data['token'] = this.token;
    data['child_count'] = this.childCount;
    if (this.teams != null) {
      data['teams'] = this.teams!.map((v) => v).toList(); // ✅ fixed
    }
    data['age'] = this.age;
    data['department_name'] = this.departmentName;
    data['designation_name'] = this.designationName;
    if (this.departmentsRecords != null) {
      data['departments_records'] = this.departmentsRecords!.toJson();
    }
    if (this.designationsRecords != null) {
      data['designations_records'] = this.designationsRecords!.toJson();
    }
    return data;
  }
}

class Company {
  String? companyName;
  String? logo;
  String? contactNumber;
  String? email;
  String? streetAddress;
  String? city;
  String? state;
  String? pincode;
  String? country;

  Company({
    this.companyName,
    this.logo,
    this.contactNumber,
    this.email,
    this.streetAddress,
    this.city,
    this.state,
    this.pincode,
    this.country,
  });

  Company.fromJson(Map<String, dynamic> json) {
    companyName = json['company_name'];
    logo = json['logo'];
    contactNumber = json['contact_number'];
    email = json['email'];
    streetAddress = json['street_address'];
    city = json['city'];
    state = json['state'];
    pincode = json['pincode'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['company_name'] = this.companyName;
    data['logo'] = this.logo;
    data['contact_number'] = this.contactNumber;
    data['email'] = this.email;
    data['street_address'] = this.streetAddress;
    data['city'] = this.city;
    data['state'] = this.state;
    data['pincode'] = this.pincode;
    data['country'] = this.country;
    return data;
  }
}

class Permissions {
  String? permission;
  bool? showMenu;

  Permissions({this.permission, this.showMenu});

  Permissions.fromJson(Map<String, dynamic> json) {
    permission = json['permission'];
    showMenu = json['show_menu'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['permission'] = this.permission;
    data['show_menu'] = this.showMenu;
    return data;
  }
}

class SiteMenu {
  List<Parent>? parent;

  SiteMenu({this.parent});

  SiteMenu.fromJson(Map<String, dynamic> json) {
    if (json['parent'] != null) {
      parent = <Parent>[];
      json['parent'].forEach((v) {
        parent!.add(new Parent.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.parent != null) {
      data['parent'] = this.parent!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Parent {
  String? name;
  String? id;
  String? url;
  bool? visible;
  List<FirstChild>? firstChild;

  Parent({this.name, this.id, this.url, this.visible, this.firstChild});

  Parent.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    url = json['url'];
    visible = json['visible'];
    if (json['first_child'] != null) {
      firstChild = <FirstChild>[];
      json['first_child'].forEach((v) {
        firstChild!.add(new FirstChild.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    data['url'] = this.url;
    data['visible'] = this.visible;
    if (this.firstChild != null) {
      data['first_child'] = this.firstChild!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FirstChild {
  String? name;
  String? id;
  bool? visible;
  String? url;
  List<SecondChild>? secondChild;

  FirstChild({this.name, this.id, this.visible, this.url, this.secondChild});

  FirstChild.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    visible = json['visible'];
    url = json['url'];
    if (json['second_child'] != null) {
      secondChild = <SecondChild>[];
      json['second_child'].forEach((v) {
        secondChild!.add(new SecondChild.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    data['visible'] = this.visible;
    data['url'] = this.url;
    if (this.secondChild != null) {
      data['second_child'] = this.secondChild!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SecondChild {
  String? name;
  String? id;
  bool? visible;
  String? url;

  SecondChild({this.name, this.id, this.visible, this.url});

  SecondChild.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    visible = json['visible'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    data['visible'] = this.visible;
    data['url'] = this.url;
    return data;
  }
}

class DepartmentsRecords {
  int? id;
  int? companyId;
  String? departmentName;
  String? workingDays;
  String? earnedLeave;
  String? showHolidayList;
  String? breakTime;
  String? createdAt;
  String? updatedAt;

  DepartmentsRecords({
    this.id,
    this.companyId,
    this.departmentName,
    this.workingDays,
    this.earnedLeave,
    this.showHolidayList,
    this.breakTime,
    this.createdAt,
    this.updatedAt,
  });

  DepartmentsRecords.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    companyId = json['company_id'];
    departmentName = json['department_name'];
    workingDays = json['working_days'];
    earnedLeave = json['earned_leave'];
    showHolidayList = json['show_holiday_list'];
    breakTime = json['break_time'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['company_id'] = this.companyId;
    data['department_name'] = this.departmentName;
    data['working_days'] = this.workingDays;
    data['earned_leave'] = this.earnedLeave;
    data['show_holiday_list'] = this.showHolidayList;
    data['break_time'] = this.breakTime;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class DesignationsRecords {
  int? id;
  int? companyId;
  int? departmentId;
  String? designationName;
  String? checkAttendance;
  String? createdAt;
  String? updatedAt;

  DesignationsRecords({
    this.id,
    this.companyId,
    this.departmentId,
    this.designationName,
    this.checkAttendance,
    this.createdAt,
    this.updatedAt,
  });

  DesignationsRecords.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    companyId = json['company_id'];
    departmentId = json['department_id'];
    designationName = json['designation_name'];
    checkAttendance = json['check_attendance'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['company_id'] = this.companyId;
    data['department_id'] = this.departmentId;
    data['designation_name'] = this.designationName;
    data['check_attendance'] = this.checkAttendance;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Notify {
  int? id;
  String? notification;
  String? type;
  String? status;
  String? redirectUrl;
  String? key;

  Notify({
    this.id,
    this.notification,
    this.type,
    this.status,
    this.redirectUrl,
    this.key,
  });

  Notify.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    notification = json['notification'];
    type = json['type'];
    status = json['status'];
    redirectUrl = json['redirect_url'];
    key = json['key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['notification'] = this.notification;
    data['type'] = this.type;
    data['status'] = this.status;
    data['redirect_url'] = this.redirectUrl;
    data['key'] = this.key;
    return data;
  }
}

class Pendings {
  String? leaves;
  String? regularizations;
  String? compOffs;
  String? workFromHome;

  Pendings({
    this.leaves,
    this.regularizations,
    this.compOffs,
    this.workFromHome,
  });

  Pendings.fromJson(Map<String, dynamic> json) {
    leaves = json['leaves'];
    regularizations = json['regularizations'];
    compOffs = json['comp_offs'];
    workFromHome = json['work_from_home'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['leaves'] = this.leaves;
    data['regularizations'] = this.regularizations;
    data['comp_offs'] = this.compOffs;
    data['work_from_home'] = this.workFromHome;
    return data;
  }
}
