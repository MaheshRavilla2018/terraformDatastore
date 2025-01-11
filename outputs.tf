output "datastore_name" {
  description = "The name of the Datastore database."
  value       = google_firestore_database.datastore.name
}

output "datastore_location" {
  description = "The region of the Datastore database."
  value       = google_firestore_database.datastore.location
}
