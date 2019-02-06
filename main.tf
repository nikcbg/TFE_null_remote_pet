data "terraform_remote_state" "example" {
  backend = "atlas"
  config {
    name = "tforg123/tf_random_pet"
  }  
}  

resource "null_resource" "hello" {
  provisioner "local-exec" {
    command = "echo Hello ${data.terraform_remote_state.example.name}"
  }
}
