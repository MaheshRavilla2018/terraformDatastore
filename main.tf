provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_firestore_database" "datastore" {
  name = var.name
  location = var.region
  indexes = file(var.indexes_file_path)
  type = var.database_type
}

resource "google_project_service" "firestore" {
  project = var.project_id
  service = "firestore.googleapis.com"

  depends_on = [google_firestore_database.datastore]
}

resource "google_project_service" "datastore" {
  project = var.project_id
  service = "datastore.googleapis.com"
}


