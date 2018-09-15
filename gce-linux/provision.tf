// Set our provider up "Google"
provider "google" {
    credentials = "${file("account.json")}"
    project = "rustyeddysite"
    region = "us-west1-a"
}

// Create a new instance
resource "google_compute_instance" "default" {
    
}