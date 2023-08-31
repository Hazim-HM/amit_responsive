class authin {
	String? message;
	String? exception;
	String? file;
	int? line;
	List<Trace>? trace;

	authin({this.message, this.exception, this.file, this.line, this.trace});

	authin.fromJson(Map<String, dynamic> json) {
		message = json['message'];
		exception = json['exception'];
		file = json['file'];
		line = json['line'];
		if (json['trace'] != null) {
			trace = <Trace>[];
			json['trace'].forEach((v) { trace!.add( Trace.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data =  Map<String, dynamic>();
		data['message'] = this.message;
		data['exception'] = this.exception;
		data['file'] = this.file;
		data['line'] = this.line;
		if (this.trace != null) {
      data['trace'] = this.trace!.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class Trace {
	String? file;
	int? line;
	String? function;
	String? classX;
	String? type;

	Trace({this.file, this.line, this.function, this.classX, this.type});

	Trace.fromJson(Map<String, dynamic> json) {
		file = json['file'];
		line = json['line'];
		function = json['function'];
		classX = json['class'];
		type = json['type'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['file'] = this.file;
		data['line'] = this.line;
		data['function'] = this.function;
		data['class'] = this.classX;
		data['type'] = this.type;
		return data;
	}
}
