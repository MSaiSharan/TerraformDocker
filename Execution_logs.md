***terraform init***

Initializing the backend...

Initializing provider plugins...
- Finding kreuzwerker/docker versions matching "3.0.0"...
- Installing kreuzwerker/docker v3.0.0...
- Installed kreuzwerker/docker v3.0.0 (self-signed, key ID BD080C4571C6104C)

Partner and community providers are signed by their developers.
If you'd like to know more about provider signing, you can read about it here:
https://www.terraform.io/docs/cli/plugins/signing.html

Terraform has made some changes to the provider dependency selections recorded
in the .terraform.lock.hcl file. Review those changes and commit them to your
version control system if they represent changes you intended to make.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.



***terraform plan***

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the   
following symbols:
  + create

Terraform will perform the following actions:

  # docker_container.python_container will be created
  + resource "docker_container" "python_container" {
      + attach                                      = false
      + bridge                                      = (known after apply)
      + command                                     = [
          + "python3",
          + "-m",
          + "http.server",
          + "8000",
        ]
      + container_logs                              = (known after apply)
      + container_read_refresh_timeout_milliseconds = 15000
      + entrypoint                                  = (known after apply)
      + env                                         = (known after apply)
      + exit_code                                   = (known after apply)
      + hostname                                    = (known after apply)
      + id                                          = (known after apply)
      + image                                       = "python:3.11"
      + init                                        = (known after apply)
      + ipc_mode                                    = (known after apply)
      + log_driver                                  = (known after apply)
      + logs                                        = false
      + must_run                                    = true
      + name                                        = "terraform-python"
      + network_data                                = (known after apply)
      + read_only                                   = false
      + remove_volumes                              = true
      + restart                                     = "no"
      + rm                                          = false
      + runtime                                     = (known after apply)
      + security_opts                               = (known after apply)
      + shm_size                                    = (known after apply)
      + start                                       = true
      + stdin_open                                  = false
      + stop_signal                                 = (known after apply)
      + stop_timeout                                = (known after apply)
      + tty                                         = false
      + wait                                        = false
      + wait_timeout                                = 60

      + ports {
          + external = 8000
          + internal = 8000
          + ip       = "0.0.0.0"
          + protocol = "tcp"
        }
    }

  # docker_image.python will be created
  + resource "docker_image" "python" {
      + id           = (known after apply)
      + image_id     = (known after apply)
      + keep_locally = false
      + name         = "python:3.11"
      + repo_digest  = (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.


***terraform apply***

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # docker_container.python_container will be created
  + resource "docker_container" "python_container" {
      + attach                                      = false
      + bridge                                      = (known after apply)
      + command                                     = [
          + "python3",
          + "-m",
          + "http.server",
          + "8000",
        ]
      + container_logs                              = (known after apply)
      + container_read_refresh_timeout_milliseconds = 15000
      + entrypoint                                  = (known after apply)
      + env                                         = (known after apply)
      + exit_code                                   = (known after apply)
      + hostname                                    = (known after apply)
      + id                                          = (known after apply)
      + image                                       = "python:3.11"
      + init                                        = (known after apply)
      + ipc_mode                                    = (known after apply)
      + log_driver                                  = (known after apply)
      + logs                                        = false
      + must_run                                    = true
      + name                                        = "terraform-python"
      + network_data                                = (known after apply)
      + read_only                                   = false
      + remove_volumes                              = true
      + restart                                     = "no"
      + rm                                          = false
      + runtime                                     = (known after apply)
      + security_opts                               = (known after apply)
      + shm_size                                    = (known after apply)
      + start                                       = true
      + stdin_open                                  = false
      + stop_signal                                 = (known after apply)
      + stop_timeout                                = (known after apply)
      + tty                                         = false
      + wait                                        = false
      + wait_timeout                                = 60

      + ports {
          + external = 8000
          + internal = 8000
          + ip       = "0.0.0.0"
          + protocol = "tcp"
        }
    }

  # docker_image.python will be created
  + resource "docker_image" "python" {
      + id           = (known after apply)
      + image_id     = (known after apply)
      + keep_locally = false
      + name         = "python:3.11"
      + repo_digest  = (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

docker_image.python: Creating...
docker_image.python: Still creating... [10s elapsed]
docker_image.python: Still creating... [20s elapsed]
docker_image.python: Still creating... [30s elapsed]
docker_image.python: Still creating... [40s elapsed]
docker_image.python: Still creating... [50s elapsed]
docker_image.python: Creation complete after 52s [id=sha256:9153baea63f0b65f8cc4f5b2d064162326e25892a8a89bc543e0475c90471211python:3.11]
docker_container.python_container: Creating...
docker_container.python_container: Creation complete after 2s [id=6e02854201cd55fe9dc52d86ec0f52ec7dc30a08ad2ad1e7dfa6ee9b3c3b1dba]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.


***terraform state list***

PS C:\Users\USER\Desktop\Demo\TerraformDocker> terraform state list
docker_container.python_container
docker_image.python


***Docker ps***
CONTAINER ID   IMAGE         COMMAND                  CREATED          STATUS          PORTS                    NAMES
6e02854201cd   python:3.11   "python3 -m http.ser…"   15 minutes ago   Up 15 minutes   0.0.0.0:8000->8000/tcp   terraform-python

***terraform destroy***

docker_image.python: Refreshing state... [id=sha256:9153baea63f0b65f8cc4f5b2d064162326e25892a8a89bc543e0475c90471211python:3.11]
docker_container.python_container: Refreshing state... [id=6e02854201cd55fe9dc52d86ec0f52ec7dc30a08ad2ad1e7dfa6ee9b3c3b1dba]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  - destroy

Terraform will perform the following actions:

  # docker_container.python_container will be destroyed
  - resource "docker_container" "python_container" {
      - attach                                      = false -> null
      - command                                     = [
          - "python3",
          - "-m",
          - "http.server",
          - "8000",
        ] -> null
      - container_read_refresh_timeout_milliseconds = 15000 -> null
      - cpu_shares                                  = 0 -> null
      - dns                                         = [] -> null
      - dns_opts                                    = [] -> null
      - dns_search                                  = [] -> null
      - entrypoint                                  = [] -> null
      - env                                         = [] -> null
      - group_add                                   = [] -> null
      - hostname                                    = "6e02854201cd" -> null
      - id                                          = "6e02854201cd55fe9dc52d86ec0f52ec7dc30a08ad2ad1e7dfa6ee9b3c3b1dba" -> null
      - image                                       = "sha256:9153baea63f0b65f8cc4f5b2d064162326e25892a8a89bc543e0475c90471211" -> null
      - init                                        = false -> null
      - ipc_mode                                    = "private" -> null
      - log_driver                                  = "json-file" -> null
      - log_opts                                    = {} -> null
      - logs                                        = false -> null
      - max_retry_count                             = 0 -> null
      - memory                                      = 0 -> null
      - memory_swap                                 = 0 -> null
      - must_run                                    = true -> null
      - name                                        = "terraform-python" -> null
      - network_data                                = [
          - {
              - gateway                   = "172.17.0.1"
              - global_ipv6_prefix_length = 0
              - ip_address                = "172.17.0.2"
              - ip_prefix_length          = 16
              - network_name              = "bridge"
                # (2 unchanged attributes hidden)
            },
        ] -> null
      - network_mode                                = "bridge" -> null
      - privileged                                  = false -> null
      - publish_all_ports                           = false -> null
      - read_only                                   = false -> null
      - remove_volumes                              = true -> null
      - restart                                     = "no" -> null
      - rm                                          = false -> null
      - runtime                                     = "runc" -> null
      - security_opts                               = [] -> null
      - shm_size                                    = 64 -> null
      - start                                       = true -> null
      - stdin_open                                  = false -> null
      - stop_timeout                                = 0 -> null
      - storage_opts                                = {} -> null
      - sysctls                                     = {} -> null
      - tmpfs                                       = {} -> null
      - tty                                         = false -> null
      - wait                                        = false -> null
      - wait_timeout                                = 60 -> null
        # (8 unchanged attributes hidden)

      - ports {
          - external = 8000 -> null
          - internal = 8000 -> null
          - ip       = "0.0.0.0" -> null
          - protocol = "tcp" -> null
        }
    }

  # docker_image.python will be destroyed
  - resource "docker_image" "python" {
      - id           = "sha256:9153baea63f0b65f8cc4f5b2d064162326e25892a8a89bc543e0475c90471211python:3.11" -> null       
      - image_id     = "sha256:9153baea63f0b65f8cc4f5b2d064162326e25892a8a89bc543e0475c90471211" -> null
      - keep_locally = false -> null
      - name         = "python:3.11" -> null
      - repo_digest  = "python@sha256:9153baea63f0b65f8cc4f5b2d064162326e25892a8a89bc543e0475c90471211" -> null
    }

Plan: 0 to add, 0 to change, 2 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

docker_container.python_container: Destroying... [id=6e02854201cd55fe9dc52d86ec0f52ec7dc30a08ad2ad1e7dfa6ee9b3c3b1dba]
docker_container.python_container: Destruction complete after 0s
docker_image.python: Destroying... [id=sha256:9153baea63f0b65f8cc4f5b2d064162326e25892a8a89bc543e0475c90471211python:3.11]
docker_image.python: Destruction complete after 4s

Destroy complete! Resources: 2 destroyed.

