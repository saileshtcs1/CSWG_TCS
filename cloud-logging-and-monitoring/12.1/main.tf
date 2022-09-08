resource "google_project_iam_audit_config" "project" {
    project = var.project_id
    service = "allServices"
    audit_log_config {
        log_type = "ADMIN_READ"
    }
    audit_log_config {
        log_type = "DATA_WRITE"
    }
    audit_log_config {
        log_type = "DATA_READ"
    }
}