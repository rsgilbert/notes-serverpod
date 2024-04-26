import 'package:mypod_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class NotesEndpoint extends Endpoint {
  Future<void> createNote(Session session, Note note)  async {
    await Note.db.insertRow(session, note);
  }

  Future<void> deleteNote(Session session, Note note) async {
    await Note.db.deleteRow(session, note);
  }

  Future<List<Note>> getAllNotes(Session session) async {
    return await Note.db.find(session, orderBy: (t) => t.id);
  }
}