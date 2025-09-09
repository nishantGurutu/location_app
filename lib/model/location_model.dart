class LocationModel {
  bool? success;
  LocationData? data;
  String? message;
  List<Notify>? notify;
  Pendings? pendings;

  LocationModel({
    this.success,
    this.data,
    this.message,
    this.notify,
    this.pendings,
  });

  LocationModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null
        ? new LocationData.fromJson(json['data'])
        : null;
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

class LocationData {
  UserLocation? userLocation;

  LocationData({this.userLocation});

  LocationData.fromJson(Map<String, dynamic> json) {
    userLocation = json['user_location'] != null
        ? new UserLocation.fromJson(json['user_location'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.userLocation != null) {
      data['user_location'] = this.userLocation!.toJson();
    }
    return data;
  }
}

class UserLocation {
  int? companyId;
  int? userId;
  String? locationDate;
  String? locationTime;
  double? lat;
  double? lng;
  String? updatedAt;
  String? createdAt;
  int? id;

  UserLocation({
    this.companyId,
    this.userId,
    this.locationDate,
    this.locationTime,
    this.lat,
    this.lng,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  UserLocation.fromJson(Map<String, dynamic> json) {
    companyId = json['company_id'];
    userId = json['user_id'];
    locationDate = json['location_date'];
    locationTime = json['location_time'];
    lat = json['lat'];
    lng = json['lng'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['company_id'] = this.companyId;
    data['user_id'] = this.userId;
    data['location_date'] = this.locationDate;
    data['location_time'] = this.locationTime;
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
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
