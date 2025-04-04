class Contact {
  int? id;
  String uuid;
  String name;
  String phone;
  String createdAt;
  String updatedAt;
  int isDeleted;

  Contact({
    this.id,
    required this.uuid,
    required this.name,
    required this.phone,
    required this.createdAt,
    required this.updatedAt,
    this.isDeleted = 0,
  });

  // Converter um objeto Contact para um mapa (para inserir no banco)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'uuid': uuid,
      'name': name,
      'phone': phone,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'is_deleted': isDeleted,
    };
  }

  // Criar um objeto Contact a partir de um mapa (resultado do banco)
  factory Contact.fromMap(Map<String, dynamic> map) {
    return Contact(
      id: map['id'],
      uuid: map['uuid'],
      name: map['name'],
      phone: map['phone'],
      createdAt: map['created_at'],
      updatedAt: map['updated_at'],
      isDeleted: map['is_deleted'] ?? 0,
    );
  }
}

